---
layout: page
title: "V-HOP: Visuo-Haptic 6D Object Pose Tracking"
description: We fuse visual and haptic sensing to achieve accurate real-time in-hand object tracking.
img: assets/img/publication_preview/v-hop-teaser.png
importance: 1
category: research
giscus_comments: false
related_publications: v-hop, hypertaxel, li2023vihope
---
<div class="author">
    <em><b>Hongyu Li</b><sup>1</sup></em>,&nbsp;
    <a href="https://saulbatman.github.io/" rel="external nofollow noopener" target="_blank">Mingxi Jia</a><sup>1</sup>,&nbsp;
    <a href="https://scholar.google.com/citations?user=Zddf-sEAAAAJ&amp;hl=en" rel="external nofollow noopener" target="_blank">Tuluhan Akbulut</a><sup>1</sup>,&nbsp;
    <a href="https://yuxng.github.io/" rel="external nofollow noopener" target="_blank">Yu Xiang</a><sup>2</sup>,&nbsp;
    <a href="https://cs.brown.edu/people/gdk/" rel="external nofollow noopener" target="_blank">George Konidaris</a><sup>1</sup>,&nbsp;
    and&nbsp;<a href="https://cs.brown.edu/people/ssrinath/" rel="external nofollow noopener" target="_blank">Srinath Sridhar</a><sup>1</sup>
</div>
<div class="author">
    <sup>1</sup> Brown University,&nbsp;
    <sup>2</sup> UT Dallas
</div>

Read our preprint on <a href="http://arxiv.org/abs/2502.17434" target="_blank">arXiv</a>

<style>
    .image-right {
        float: right;
        margin-left: 15px;
    }
    .image-left {
        float: left;
        margin-right: 15px;
    }
</style>

{% include figure.html path="assets/img/publication_preview/v-hop-teaser.png" title="Visuo-haptic sensing for 6D object pose tracking. We fuse egocentric visual and haptic sensing to achieve accurate real-time in-hand object tracking." class="img-fluid rounded z-depth-1 image-right" width="40%"%}

<h2> Abstract </h2>
Humans naturally integrate vision and haptics for robust object perception during manipulation. The loss of either modality significantly degrades performance. Inspired by this multisensory integration, prior object pose estimation research has attempted to combine visual and haptic/tactile feedback. Although these works demonstrate improvements in controlled environments or synthetic datasets, they often underperform vision-only approaches in real-world settings due to poor generalization across diverse grippers, sensor layouts, or sim-to-real environments. Furthermore, they typically estimate the object pose for each frame independently, resulting in less coherent tracking over sequences in real-world deployments. To address these limitations, we introduce a novel unified haptic representation that effectively handles multiple gripper embodiments. Building on this representation, we introduce a new visuo-haptic transformer-based object pose tracker that seamlessly integrates visual and haptic input. We validate our framework in our dataset and the Feelsight dataset, demonstrating significant performance improvement on challenging sequences. Notably, our method achieves superior generalization and robustness across novel embodiments, objects, and sensor types (both taxel-based and vision-based tactile sensors). In real-world experiments, we demonstrate that our approach outperforms state-of-the-art visual trackers by a large margin. We further show that we can achieve precise manipulation tasks by incorporating our real-time object tracking result into motion plans, underscoring the advantages of visuo-haptic perception. Our model and dataset will be made open source upon acceptance of the paper. Project website: this https URL

<h2> Methodology </h2>
<div class="row">
    {% include figure.html path="assets/img/v-hop/method.drawio.png" title="Network Design of V-HOP" class="img-fluid rounded z-depth-0" %}
</div>
<div class="caption">
    The visual modality, based on FoundationPose, uses a visual encoder to process RGB-D observations (real and rendered) into feature maps, which are concatenated and refined through a ResBlock to produce visual embeddings.
    The haptic modality encodes a unified hand-object point cloud, derived from 9D hand \(\mathcal{P}_h\) and object \(\mathcal{P}_o\) point clouds, into a haptic embedding that captures hand-object interactions.
    These visual and haptic embeddings are processed by Transformer encoders to estimate 3D translation and rotation.
</div>

<h2> Dataset Visualization </h2>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000001.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000002.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000005.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000006.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000007.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000008.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000010.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/v-hop/dataset/rgb_000011.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    we develop a multi-embodied dataset using NVIDIA Isaac Sim to enable cross-embodiment learning and thorough evaluation.
</div>

<h2> Experiment Video </h2>
<iframe width="100%" height="500" src="https://www.youtube.com/embed/Q-NWmvfo-Tc?si=7CPX6XoDZUQKCzhR" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<h2> Citing V-HOP </h2>
{% raw %}
```bib
@misc{li2025vhop,
      title={V-HOP: Visuo-Haptic 6D Object Pose Tracking}, 
      author={Hongyu Li and Mingxi Jia and Tuluhan Akbulut and Yu Xiang and George Konidaris and Srinath Sridhar},
      year={2025},
      eprint={2502.17434},
      archivePrefix={arXiv},
      primaryClass={cs.RO},
      url={https://arxiv.org/abs/2502.17434}, 
}
```
{% endraw %}
<h2> Ackowledgements </h2>
This work is supported by the National Science Foundation (NSF) under CAREER grant #2143576, grant #2346528, and ONR Grant #N00014-22-1-259. We thank Ying Wang, Tao Lu, Zekun Li, and Xiaoyan Cong for their valuable discussions.

<h2 style="text-align: center;"> Code coming soon! </h2>