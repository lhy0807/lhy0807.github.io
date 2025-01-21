---
layout: page
title: V-HOP
description: We fuse visual and haptic sensing to achieve accurate real-time in-hand object tracking.
img: assets/img/publication_preview/v-hop-teaser.png
importance: 1
category: research
giscus_comments: false
related_publications: hypertaxel, li2023vihope
---

<div class="row">
    {% include figure.html path="assets/img/v-hop/method.drawio.png" title="Network Design of V-HOP" class="img-fluid rounded z-depth-0" %}
</div>
<div class="caption">
    The visual modality, based on FoundationPose, uses a visual encoder to process RGB-D observations (real and rendered) into feature maps, which are concatenated and refined through a ResBlock to produce visual embeddings.
    The haptic modality encodes a unified hand-object point cloud, derived from 9D hand \(\mathcal{P}_h\) and object \(\mathcal{P}_o\) point clouds, into a haptic embedding that captures hand-object interactions.
    These visual and haptic embeddings are processed by Transformer encoders to estimate 3D translation and rotation.
</div>


{% raw %}
```html
<div class="row justify-content-sm-center">
    <div class="col-sm-8 mt-3 mt-md-0">
        {% include figure.html path="assets/img/6.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm-4 mt-3 mt-md-0">
        {% include figure.html path="assets/img/11.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
```
{% endraw %}
