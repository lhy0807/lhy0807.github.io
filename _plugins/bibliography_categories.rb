module Jekyll
  class BibliographyCategories < Jekyll::Generator
    safe true
    priority :normal

    def generate(site)
      # Parse bibliography file to extract categories
      bibliography_file = File.join(site.source, '_bibliography', 'papers.bib')
      categories = {}
      selected_papers = {}
      
      if File.exist?(bibliography_file)
        content = File.read(bibliography_file)
        
        # Split into individual entries
        entries = content.split(/(?=^@)/m)
        
        entries.each do |entry|
          next if entry.strip.empty?
          
          # Extract entry key
          key_match = entry.match(/^@\w+\{([^,]+),/)
          next unless key_match
          key = key_match[1]
          
          # Extract category
          category_match = entry.match(/category\s*=\s*\{([^}]+)\}/)
          if category_match
            # Split categories by comma and strip whitespace
            category_list = category_match[1].split(',').map(&:strip)
            categories[key] = category_list
          end
          # Papers without category are not added to categories hash
          
          # Extract selected status
          selected_match = entry.match(/selected\s*=\s*\{([^}]+)\}/)
          selected = selected_match ? selected_match[1].downcase == 'true' : false
          
          # Store selected status
          selected_papers[key] = selected
        end
      end
      
      # Make categories available to templates
      site.config['bibliography_categories'] = categories
      site.config['selected_papers'] = selected_papers
      
      # Get unique categories for buttons (flatten all category arrays and get unique values)
      all_categories = categories.values.flatten.uniq.sort
      site.config['unique_categories'] = all_categories
    end
  end
end 