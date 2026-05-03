<div class="saber-gallery motion-element">
  <div class="saber-gallery-container" id="saberGallery">
    <div class="saber-gallery-track">
      <img class="saber-gallery-img" src="/images/blue_saber.png" alt="Blue Saber" data-index="0">
      <img class="saber-gallery-img" src="/images/daily_saber.png" alt="Daily Saber" data-index="1">
      <img class="saber-gallery-img" src="/images/dark_saber.png" alt="Dark Saber" data-index="2">
    </div>
    <button class="saber-gallery-arrow saber-gallery-prev" id="saberPrev" aria-label="上一张">
      <i class="fa fa-chevron-left"></i>
    </button>
    <button class="saber-gallery-arrow saber-gallery-next" id="saberNext" aria-label="下一张">
      <i class="fa fa-chevron-right"></i>
    </button>
    <div class="saber-gallery-dots">
      <span class="saber-gallery-dot active"></span>
      <span class="saber-gallery-dot"></span>
      <span class="saber-gallery-dot"></span>
    </div>
  </div>
</div>

<div class="saber-lightbox" id="saberLightbox">
  <div class="saber-lightbox-overlay"></div>
  <button class="saber-lightbox-close" id="saberLightboxClose" aria-label="关闭">
    <i class="fa fa-times"></i>
  </button>
  <button class="saber-lightbox-arrow saber-lightbox-prev" id="saberLightboxPrev" aria-label="上一张">
    <i class="fa fa-chevron-left"></i>
  </button>
  <button class="saber-lightbox-arrow saber-lightbox-next" id="saberLightboxNext" aria-label="下一张">
    <i class="fa fa-chevron-right"></i>
  </button>
  <div class="saber-lightbox-content">
    <img class="saber-lightbox-img" id="saberLightboxImg" src="" alt="">
  </div>
  <div class="saber-lightbox-counter" id="saberLightboxCounter"></div>
</div>

<style>
.saber-gallery {
  margin-top: 15px;
  text-align: center;
}
.saber-gallery-container {
  position: relative;
  width: 100%;
  height: 280px;
  overflow: hidden;
  border-radius: 8px;
  cursor: pointer;
  user-select: none;
  -webkit-user-select: none;
}
.saber-gallery-container:active {
  cursor: pointer;
}
.saber-gallery-track {
  display: flex;
  height: 100%;
  transition: transform 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
  will-change: transform;
}
.saber-gallery-img {
  flex-shrink: 0;
  width: 100%;
  height: 100%;
  object-fit: contain;
  object-position: center;
  pointer-events: none;
}
.saber-gallery-arrow {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 32px;
  height: 32px;
  border: none;
  border-radius: 50%;
  background: rgba(0, 0, 0, 0.4);
  color: #fff;
  font-size: 14px;
  cursor: pointer;
  opacity: 0;
  transition: opacity 0.3s ease, background 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 2;
}
.saber-gallery-container:hover .saber-gallery-arrow {
  opacity: 1;
}
.saber-gallery-arrow:hover {
  background: rgba(0, 0, 0, 0.7);
}
.saber-gallery-arrow.disabled {
  opacity: 0.2 !important;
  cursor: not-allowed;
}
.saber-gallery-prev {
  left: 8px;
}
.saber-gallery-next {
  right: 8px;
}
.saber-gallery-dots {
  position: absolute;
  bottom: 10px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  gap: 6px;
  z-index: 2;
}
.saber-gallery-dot {
  width: 6px;
  height: 6px;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.5);
  transition: background 0.3s ease, transform 0.3s ease;
  cursor: pointer;
}
.saber-gallery-dot.active {
  background: rgba(255, 255, 255, 0.95);
  transform: scale(1.3);
}

/* Lightbox Styles */
.saber-lightbox {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 9999;
  display: none;
  opacity: 0;
  transition: opacity 0.3s ease;
}
.saber-lightbox.active {
  display: flex;
  opacity: 1;
}
.saber-lightbox-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.92);
  cursor: pointer;
}
.saber-lightbox-content {
  position: relative;
  z-index: 2;
  margin: auto;
  max-width: 90vw;
  max-height: 90vh;
  display: flex;
  align-items: center;
  justify-content: center;
}
.saber-lightbox-img {
  max-width: 100%;
  max-height: 90vh;
  object-fit: contain;
  border-radius: 4px;
  transform: scale(0.8);
  transition: transform 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
}
.saber-lightbox.active .saber-lightbox-img {
  transform: scale(1);
}
.saber-lightbox-close {
  position: absolute;
  top: 20px;
  right: 30px;
  width: 40px;
  height: 40px;
  border: none;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.15);
  color: #fff;
  font-size: 18px;
  cursor: pointer;
  z-index: 3;
  transition: background 0.3s ease, transform 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
}
.saber-lightbox-close:hover {
  background: rgba(255, 255, 255, 0.3);
  transform: rotate(90deg);
}
.saber-lightbox-arrow {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 50px;
  height: 50px;
  border: none;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.15);
  color: #fff;
  font-size: 20px;
  cursor: pointer;
  z-index: 3;
  transition: background 0.3s ease, opacity 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
}
.saber-lightbox-arrow:hover {
  background: rgba(255, 255, 255, 0.3);
}
.saber-lightbox-arrow.disabled {
  opacity: 0.2;
  cursor: not-allowed;
}
.saber-lightbox-prev {
  left: 20px;
}
.saber-lightbox-next {
  right: 20px;
}
.saber-lightbox-counter {
  position: absolute;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  color: rgba(255, 255, 255, 0.8);
  font-size: 14px;
  z-index: 3;
  letter-spacing: 2px;
}

@media (max-width: 768px) {
  .saber-lightbox-arrow {
    width: 40px;
    height: 40px;
    font-size: 16px;
  }
  .saber-lightbox-prev {
    left: 10px;
  }
  .saber-lightbox-next {
    right: 10px;
  }
  .saber-lightbox-close {
    top: 10px;
    right: 15px;
    width: 36px;
    height: 36px;
    font-size: 16px;
  }
}
</style>

<script>
(function() {
  // Gallery Logic
  var container = document.getElementById('saberGallery');
  var track = container.querySelector('.saber-gallery-track');
  var images = container.querySelectorAll('.saber-gallery-img');
  var dots = container.querySelectorAll('.saber-gallery-dot');
  var prevBtn = document.getElementById('saberPrev');
  var nextBtn = document.getElementById('saberNext');
  var current = 0;
  var total = images.length;
  var autoInterval = 15000;
  var timer = null;

  function goTo(index) {
    if (index < 0) index = 0;
    if (index >= total) index = total - 1;
    current = index;
    track.style.transform = 'translateX(-' + (current * 100) + '%)';
    dots.forEach(function(dot, i) {
      dot.classList.toggle('active', i === current);
    });
    updateArrows();
  }

  function updateArrows() {
    prevBtn.classList.toggle('disabled', current === 0);
    nextBtn.classList.toggle('disabled', current === total - 1);
  }

  function next() {
    if (current < total - 1) {
      goTo(current + 1);
    }
  }

  function prev() {
    if (current > 0) {
      goTo(current - 1);
    }
  }

  function startAuto() {
    timer = setInterval(function() {
      if (current < total - 1) {
        goTo(current + 1);
      } else {
        goTo(0);
      }
    }, autoInterval);
  }

  function stopAuto() {
    clearInterval(timer);
  }

  prevBtn.addEventListener('click', function(e) {
    e.stopPropagation();
    stopAuto();
    prev();
    startAuto();
  });

  nextBtn.addEventListener('click', function(e) {
    e.stopPropagation();
    stopAuto();
    next();
    startAuto();
  });

  dots.forEach(function(dot, i) {
    dot.addEventListener('click', function(e) {
      e.stopPropagation();
      stopAuto();
      goTo(i);
      startAuto();
    });
  });

  // Touch swipe support
  var startX = 0;
  var startY = 0;
  var isDragging = false;
  var currentTranslate = 0;
  var prevTranslate = 0;

  container.addEventListener('touchstart', function(e) {
    startX = e.touches[0].clientX;
    startY = e.touches[0].clientY;
    isDragging = true;
    stopAuto();
    track.style.transition = 'none';
  }, { passive: true });

  container.addEventListener('touchmove', function(e) {
    if (!isDragging) return;
    var diffX = e.touches[0].clientX - startX;
    var diffY = e.touches[0].clientY - startY;
    if (Math.abs(diffX) > Math.abs(diffY)) {
      currentTranslate = prevTranslate + diffX;
      track.style.transform = 'translateX(' + currentTranslate + 'px)';
    }
  }, { passive: true });

  container.addEventListener('touchend', function(e) {
    if (!isDragging) return;
    isDragging = false;
    track.style.transition = 'transform 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94)';
    var diffX = e.changedTouches[0].clientX - startX;
    if (Math.abs(diffX) > 50) {
      if (diffX > 0 && current > 0) {
        prev();
      } else if (diffX < 0 && current < total - 1) {
        next();
      } else {
        goTo(current);
      }
    } else {
      goTo(current);
    }
    prevTranslate = -(current * container.offsetWidth);
    startAuto();
  });

  // Mouse drag support
  var mouseDown = false;
  container.addEventListener('mousedown', function(e) {
    mouseDown = true;
    startX = e.clientX;
    stopAuto();
    track.style.transition = 'none';
    e.preventDefault();
  });

  container.addEventListener('mousemove', function(e) {
    if (!mouseDown) return;
    var diffX = e.clientX - startX;
    currentTranslate = prevTranslate + diffX;
    track.style.transform = 'translateX(' + currentTranslate + 'px)';
  });

  container.addEventListener('mouseup', function(e) {
    if (!mouseDown) return;
    mouseDown = false;
    track.style.transition = 'transform 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94)';
    var diffX = e.clientX - startX;
    if (Math.abs(diffX) > 50) {
      if (diffX > 0 && current > 0) {
        prev();
      } else if (diffX < 0 && current < total - 1) {
        next();
      } else {
        goTo(current);
      }
    } else {
      goTo(current);
    }
    prevTranslate = -(current * container.offsetWidth);
    startAuto();
  });

  container.addEventListener('mouseleave', function() {
    if (mouseDown) {
      mouseDown = false;
      track.style.transition = 'transform 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94)';
      goTo(current);
      prevTranslate = -(current * container.offsetWidth);
      startAuto();
    }
  });

  window.addEventListener('resize', function() {
    prevTranslate = -(current * container.offsetWidth);
  });

  // Lightbox Logic
  var lightbox = document.getElementById('saberLightbox');
  var lightboxImg = document.getElementById('saberLightboxImg');
  var lightboxClose = document.getElementById('saberLightboxClose');
  var lightboxPrevBtn = document.getElementById('saberLightboxPrev');
  var lightboxNextBtn = document.getElementById('saberLightboxNext');
  var lightboxCounter = document.getElementById('saberLightboxCounter');
  var lightboxOverlay = lightbox.querySelector('.saber-lightbox-overlay');
  var lightboxCurrent = 0;
  var imgSources = Array.from(images).map(function(img) { return img.src; });

  function openLightbox(index) {
    lightboxCurrent = index;
    lightboxImg.src = imgSources[lightboxCurrent];
    updateLightboxCounter();
    updateLightboxArrows();
    lightbox.style.display = 'flex';
    document.body.style.overflow = 'hidden';
    // Force reflow
    lightbox.offsetHeight;
    lightbox.classList.add('active');
    stopAuto();
  }

  function closeLightbox() {
    lightbox.classList.remove('active');
    document.body.style.overflow = '';
    setTimeout(function() {
      lightbox.style.display = 'none';
      lightboxImg.src = '';
      startAuto();
    }, 300);
  }

  function updateLightboxCounter() {
    lightboxCounter.textContent = (lightboxCurrent + 1) + ' / ' + total;
  }

  function updateLightboxArrows() {
    lightboxPrevBtn.classList.toggle('disabled', lightboxCurrent === 0);
    lightboxNextBtn.classList.toggle('disabled', lightboxCurrent === total - 1);
  }

  function lightboxGoTo(index) {
    if (index < 0 || index >= total) return;
    lightboxCurrent = index;
    lightboxImg.style.opacity = '0.5';
    setTimeout(function() {
      lightboxImg.src = imgSources[lightboxCurrent];
      lightboxImg.style.opacity = '1';
      updateLightboxCounter();
      updateLightboxArrows();
    }, 150);
  }

  function lightboxNext() {
    if (lightboxCurrent < total - 1) {
      lightboxGoTo(lightboxCurrent + 1);
    }
  }

  function lightboxPrev() {
    if (lightboxCurrent > 0) {
      lightboxGoTo(lightboxCurrent - 1);
    }
  }

  // Click on gallery image to open lightbox
  container.addEventListener('click', function(e) {
    if (e.target.closest('.saber-gallery-arrow') || e.target.closest('.saber-gallery-dots')) return;
    openLightbox(current);
  });

  lightboxClose.addEventListener('click', closeLightbox);
  lightboxOverlay.addEventListener('click', closeLightbox);

  lightboxPrevBtn.addEventListener('click', function(e) {
    e.stopPropagation();
    lightboxPrev();
  });

  lightboxNextBtn.addEventListener('click', function(e) {
    e.stopPropagation();
    lightboxNext();
  });

  // Keyboard navigation
  document.addEventListener('keydown', function(e) {
    if (!lightbox.classList.contains('active')) return;
    if (e.key === 'Escape') {
      closeLightbox();
    } else if (e.key === 'ArrowLeft') {
      lightboxPrev();
    } else if (e.key === 'ArrowRight') {
      lightboxNext();
    }
  });

  // Swipe in lightbox
  var lbStartX = 0;
  lightbox.addEventListener('touchstart', function(e) {
    lbStartX = e.touches[0].clientX;
  }, { passive: true });

  lightbox.addEventListener('touchend', function(e) {
    var diffX = e.changedTouches[0].clientX - lbStartX;
    if (Math.abs(diffX) > 80) {
      if (diffX > 0) {
        lightboxPrev();
      } else {
        lightboxNext();
      }
    }
  }, { passive: true });

  // Initialize
  prevTranslate = 0;
  updateArrows();
  startAuto();
})();
</script>
