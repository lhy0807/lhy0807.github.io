---
layout: page
title: "ViTa-Zero: Zero-shot Visuotactile Object 6D Pose Estimation"
description: 
img: assets/img/12.jpg
importance: 1
category: work
related_publications: vita-zero, hypertaxel, li2023vihope
scholar:
  bibliography_template: bib-authors
  group_by: none
---

<div class="author">
    <em><b>Hongyu Li</b><sup>1,2</sup></em>,&nbsp;
    <a href="https://jamesakl.com/" rel="external nofollow noopener" target="_blank">James Akl</a><sup>1</sup>,&nbsp;
    <a href="https://cs.brown.edu/people/ssrinath/" rel="external nofollow noopener" target="_blank">Srinath Sridhar</a><sup>1,2</sup>,&nbsp;
    <a href="http://tyebrady.com/" rel="external nofollow noopener" target="_blank">Tye Brady</a><sup>1</sup>,&nbsp;and&nbsp;
    <a href="https://coe.northeastern.edu/people/padir-taskin/" rel="external nofollow noopener" target="_blank">Taskin Padir</a><sup>1,3</sup>
</div>
<div class="author">
    <sup>1</sup> Amazon Fulfillment Technologies & Robotics,&nbsp;
    <sup>2</sup> Brown University,&nbsp;
    <sup>3</sup> Northeastern University
</div>

<br>
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

{% include figure.html path="assets/img/publication_preview/vita-zero.gif" title="ViTa-Zero tracks the in-hand object pose reliably" class="img-fluid rounded z-depth-1 image-right" width="30%"%}

To enable robots to manipulate objects like humans, accurate 6D pose estimation—determining an object's position and orientation in 3D space—is essential for improving performance. While progress has been made in object pose estimation, real-world challenges remain, particularly with dynamic tasks involving occlusions and contact.

{% include figure.html path="assets/img/vita-zero/results.drawio.png" title="Experiment results" class="img-fluid rounded z-depth-1 image-left" width="30%"%}

Recent work has combined visual and tactile sensing to improve pose tracking, as tactile feedback helps reveal hidden parts of objects. However, collecting visuotactile datasets is difficult, and models often struggle with generalization across different sensors and hardware setups.


We propose <b>ViTa-Zero</b>, a zero-shot framework that combines visual and tactile data to estimate and track the 6D pose of novel objects. By using visual models as a backbone, our method addresses situations where visual estimates fail, applying physical constraints—contact, penetration, and kinematics—to refine estimates in real-time using tactile and proprioceptive feedback.

Our experiments on real-world robotic setups show that ViTa-Zero significantly outperforms baseline visual models without requiring additional tactile dataset fine-tuning.
We leverage FoundationPose and MegaPose as our backbones and compare the performance against them.
Our framework demonstrates a consistent performance improvement upon its visual backbone, achieving an average increase of 55% in the AUC of ADD-S and 60% in ADD, along with an 80% lower position error (PE) compared to FoundationPose.


<h2> Method Overview </h2>

<div class="row">
    {% include figure.html path="assets/img/vita-zero/method.drawio.png" title="Overview of Vita-Zero" class="img-fluid rounded z-depth-0" %}
</div>
<div class="caption">
Initially, a visual model estimates the pose denoted as \(\mathit{T}\).
Then, we assess the feasibility of \(\mathit{T}\) using constraints derived from the tactile signals and proprioception.
If \(\mathit{T}\) does not meet these constraints, we refine it through our test-time optimization algorithm using tactile and proprioceptive observations, yielding the final pose estimate, denoted as \(\mathit{T}^*\).
</div>

<h2> Supplementary Video </h2>

<video width="100%" controls loop autoplay="autoplay">
    <source src="/assets/video/ICRA25_1594_VI_i.mp4" type="video/mp4">
      Your browser does not support the video tag.
</video>
