---
layout: page
title: "V-HOP: Visuo-Haptic 6D Object Pose Tracking"
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

<h2> Supplementary Video </h2>
<iframe width="100%" height="500" src="https://www.youtube.com/embed/Q-NWmvfo-Tc?si=7CPX6XoDZUQKCzhR" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<h2 style="text-align: center;"> Code coming soon! </h2>