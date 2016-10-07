
###############################################################################
#
# THIS FILE IS AUTOGENERATED BY GYP_TO_ANDROID.PY. DO NOT EDIT.
#
# For bugs, please contact scroggo@google.com or djsollen@google.com
#
###############################################################################

BASE_PATH := $(call my-dir)
LOCAL_PATH:= $(call my-dir)

###############################################################################
#
# PROBLEMS WITH SKIA DEBUGGING?? READ THIS...
#
# The debug build results in changes to the Skia headers. This means that those
# using libskia must also be built with the debug version of the Skia headers.
# There are a few scenarios where this comes into play:
#
# (1) You're building debug code that depends on libskia.
#   (a) If libskia is built in release, then define SK_RELEASE when building
#       your sources.
#   (b) If libskia is built with debugging (see step 2), then no changes are
#       needed since your sources and libskia have been built with SK_DEBUG.
# (2) You're building libskia in debug mode.
#   (a) RECOMMENDED: You can build the entire system in debug mode. Do this by
#       updating your build/core/config.mk to include -DSK_DEBUG on the line
#       that defines COMMON_GLOBAL_CFLAGS
#   (b) You can update all the users of libskia to define SK_DEBUG when they are
#       building their sources.
#
# NOTE: If neither SK_DEBUG or SK_RELEASE are defined then Skia checks NDEBUG to
#       determine which build type to use.
###############################################################################

###############################################################################
# STATIC LIBRARY
#
# This target is only to be used internally for only one of two purposes...
#  (1) statically linking into testing frameworks
#  (2) as an inclusion target for the libskia.so shared library
###############################################################################

include $(CLEAR_VARS)
LOCAL_SDCLANG_LTO := true
#LOCAL_FDO_SUPPORT := true
# This should be the last -Oxxx specified in LOCAL_CFLAGS
LOCAL_CFLAGS += -O3

LOCAL_ARM_MODE := thumb
# used for testing
#LOCAL_CFLAGS += -g -O0

LOCAL_CFLAGS += \
	-fPIC \
	-funsafe-math-optimizations \
	-Wno-unused-parameter \
	-U_FORTIFY_SOURCE \
	-D_FORTIFY_SOURCE=1 \
	-DSKIA_IMPLEMENTATION=1 \
	-Wno-clobbered -Wno-error \
	-fexceptions

ifeq ($(strip $(TARGET_ARCH)),arm)
  ifeq ($(ARCH_ARM_HAVE_NEON),true)
    LOCAL_CFLAGS += -funsafe-math-optimizations
  endif
endif


LOCAL_CPPFLAGS := \
	-std=c++11 \
	-fno-threadsafe-statics

LOCAL_SRC_FILES := \
	src/codec/SkAndroidCodec.cpp \
	src/codec/SkBmpCodec.cpp \
	src/codec/SkBmpMaskCodec.cpp \
	src/codec/SkBmpRLECodec.cpp \
	src/codec/SkBmpStandardCodec.cpp \
	src/codec/SkCodec.cpp \
	src/codec/SkGifCodec.cpp \
	src/codec/SkIcoCodec.cpp \
	src/codec/SkJpegCodec.cpp \
	src/codec/SkJpegDecoderMgr.cpp \
	src/codec/SkJpegUtility_codec.cpp \
	src/codec/SkMaskSwizzler.cpp \
	src/codec/SkMasks.cpp \
	src/codec/SkPngCodec.cpp \
	src/codec/SkSampler.cpp \
	src/codec/SkSampledCodec.cpp \
	src/codec/SkSwizzler.cpp \
	src/codec/SkWbmpCodec.cpp \
	src/codec/SkWebpAdapterCodec.cpp \
	src/codec/SkWebpCodec.cpp \
	src/codec/SkCodecImageGenerator.cpp \
	src/ports/SkImageGenerator_skia.cpp \
	src/android/SkBitmapRegionCanvas.cpp \
	src/android/SkBitmapRegionCodec.cpp \
	src/android/SkBitmapRegionDecoder.cpp \
	src/c/sk_paint.cpp \
	src/c/sk_surface.cpp \
	src/core/SkAAClip.cpp \
	src/core/SkAnnotation.cpp \
	src/core/SkAdvancedTypefaceMetrics.cpp \
	src/core/SkAlphaRuns.cpp \
	src/core/SkBBHFactory.cpp \
	src/core/SkBigPicture.cpp \
	src/core/SkBitmap.cpp \
	src/core/SkBitmapCache.cpp \
	src/core/SkBitmapController.cpp \
	src/core/SkBitmapDevice.cpp \
	src/core/SkBitmapHeap.cpp \
	src/core/SkBitmapProcShader.cpp \
	src/core/SkBitmapProcState.cpp \
	src/core/SkBitmapProcState_matrixProcs.cpp \
	src/core/SkBitmapProvider.cpp \
	src/core/SkBitmapScaler.cpp \
	src/core/SkBlitMask_D32.cpp \
	src/core/SkBlitRow_D16.cpp \
	src/core/SkBlitRow_D32.cpp \
	src/core/SkBlitter.cpp \
	src/core/SkBlitter_A8.cpp \
	src/core/SkBlitter_ARGB32.cpp \
	src/core/SkBlitter_PM4f.cpp \
	src/core/SkBlitter_RGB16.cpp \
	src/core/SkBlitter_Sprite.cpp \
	src/core/SkBuffer.cpp \
	src/core/SkCachedData.cpp \
	src/core/SkCanvas.cpp \
	src/core/SkChecksum.cpp \
	src/core/SkChunkAlloc.cpp \
	src/core/SkClipStack.cpp \
	src/core/SkColor.cpp \
	src/core/SkColorFilter.cpp \
	src/core/SkColorFilterShader.cpp \
	src/core/SkColorMatrixFilterRowMajor255.cpp \
	src/core/SkColorSpace.cpp \
	src/core/SkColorTable.cpp \
	src/core/SkComposeShader.cpp \
	src/core/SkConfig8888.cpp \
	src/core/SkConvolver.cpp \
	src/core/SkCubicClipper.cpp \
	src/core/SkData.cpp \
	src/core/SkDataTable.cpp \
	src/core/SkDebug.cpp \
	src/core/SkDeque.cpp \
	src/core/SkDevice.cpp \
	src/core/SkDeviceLooper.cpp \
	src/core/SkDeviceProfile.cpp \
	src/lazy/SkDiscardableMemoryPool.cpp \
	src/lazy/SkDiscardablePixelRef.cpp \
	src/core/SkDistanceFieldGen.cpp \
	src/core/SkDither.cpp \
	src/core/SkDraw.cpp \
	src/core/SkDrawable.cpp \
	src/core/SkDrawLooper.cpp \
	src/core/SkEdgeBuilder.cpp \
	src/core/SkEdgeClipper.cpp \
	src/core/SkEdge.cpp \
	src/core/SkError.cpp \
	src/core/SkFilterProc.cpp \
	src/core/SkFlattenable.cpp \
	src/core/SkFlattenableSerialization.cpp \
	src/core/SkFloatBits.cpp \
	src/core/SkFont.cpp \
	src/core/SkFontHost.cpp \
	src/core/SkFontMgr.cpp \
	src/core/SkFontStyle.cpp \
	src/core/SkFontDescriptor.cpp \
	src/core/SkFontStream.cpp \
	src/core/SkGeometry.cpp \
	src/core/SkGlobalInitialization_core.cpp \
	src/core/SkGlyphCache.cpp \
	src/core/SkGraphics.cpp \
	src/core/SkHalf.cpp \
	src/core/SkImageFilter.cpp \
	src/core/SkImageInfo.cpp \
	src/core/SkImageCacherator.cpp \
	src/core/SkImageGenerator.cpp \
	src/core/SkLightingShader.cpp \
	src/core/SkLinearBitmapPipeline.cpp \
	src/core/SkLineClipper.cpp \
	src/core/SkLocalMatrixImageFilter.cpp \
	src/core/SkLocalMatrixShader.cpp \
	src/core/SkMallocPixelRef.cpp \
	src/core/SkMask.cpp \
	src/core/SkMaskCache.cpp \
	src/core/SkMaskFilter.cpp \
	src/core/SkMaskGamma.cpp \
	src/core/SkMath.cpp \
	src/core/SkMatrix.cpp \
	src/core/SkMatrixImageFilter.cpp \
	src/core/SkMetaData.cpp \
	src/core/SkMipMap.cpp \
	src/core/SkMiniRecorder.cpp \
	src/core/SkModeColorFilter.cpp \
	src/core/SkMultiPictureDraw.cpp \
	src/core/SkNinePatchIter.cpp \
	src/core/SkOpts.cpp \
	src/core/SkPaint.cpp \
	src/core/SkPaintPriv.cpp \
	src/core/SkPath.cpp \
	src/core/SkPathEffect.cpp \
	src/core/SkPathMeasure.cpp \
	src/core/SkPathRef.cpp \
	src/core/SkPicture.cpp \
	src/core/SkPictureContentInfo.cpp \
	src/core/SkPictureData.cpp \
	src/core/SkPictureFlat.cpp \
	src/core/SkPictureImageGenerator.cpp \
	src/core/SkPicturePlayback.cpp \
	src/core/SkPictureRecord.cpp \
	src/core/SkPictureRecorder.cpp \
	src/core/SkPictureShader.cpp \
	src/core/SkPixelRef.cpp \
	src/core/SkPixmap.cpp \
	src/core/SkPoint.cpp \
	src/core/SkPoint3.cpp \
	src/core/SkPtrRecorder.cpp \
	src/core/SkQuadClipper.cpp \
	src/core/SkRasterClip.cpp \
	src/core/SkRasterizer.cpp \
	src/core/SkReadBuffer.cpp \
	src/core/SkRecord.cpp \
	src/core/SkRecords.cpp \
	src/core/SkRecordDraw.cpp \
	src/core/SkRecordOpts.cpp \
	src/core/SkRecorder.cpp \
	src/core/SkRect.cpp \
	src/core/SkRefDict.cpp \
	src/core/SkRegion.cpp \
	src/core/SkRegion_path.cpp \
	src/core/SkRemote.cpp \
	src/core/SkResourceCache.cpp \
	src/core/SkRRect.cpp \
	src/core/SkRTree.cpp \
	src/core/SkRWBuffer.cpp \
	src/core/SkScalar.cpp \
	src/core/SkScalerContext.cpp \
	src/core/SkScan.cpp \
	src/core/SkScan_AntiPath.cpp \
	src/core/SkScan_Antihair.cpp \
	src/core/SkScan_Hairline.cpp \
	src/core/SkScan_Path.cpp \
	src/core/SkSemaphore.cpp \
	src/core/SkShader.cpp \
	src/core/SkSharedMutex.cpp \
	src/core/SkSpanProcs.cpp \
	src/core/SkSpecialImage.cpp \
	src/core/SkSpecialSurface.cpp \
	src/core/SkSpinlock.cpp \
	src/core/SkSpriteBlitter_ARGB32.cpp \
	src/core/SkSpriteBlitter_RGB16.cpp \
	src/core/SkSpriteBlitter4f.cpp \
	src/core/SkStream.cpp \
	src/core/SkString.cpp \
	src/core/SkStringUtils.cpp \
	src/core/SkStroke.cpp \
	src/core/SkStrokeRec.cpp \
	src/core/SkStrokerPriv.cpp \
	src/core/SkTaskGroup.cpp \
	src/core/SkTextBlob.cpp \
	src/core/SkTime.cpp \
	src/core/SkThreadID.cpp \
	src/core/SkTLS.cpp \
	src/core/SkTSearch.cpp \
	src/core/SkTypeface.cpp \
	src/core/SkTypefaceCache.cpp \
	src/core/SkUnPreMultiply.cpp \
	src/core/SkUtils.cpp \
	src/core/SkValidatingReadBuffer.cpp \
	src/core/SkVarAlloc.cpp \
	src/core/SkVertState.cpp \
	src/core/SkWriteBuffer.cpp \
	src/core/SkWriter32.cpp \
	src/core/SkXfermode.cpp \
	src/core/SkXfermode4f.cpp \
	src/core/SkXfermodeU64.cpp \
	src/core/SkXfermodeInterpretation.cpp \
	src/core/SkYUVPlanesCache.cpp \
	src/doc/SkDocument.cpp \
	src/image/SkImage.cpp \
	src/image/SkImage_Generator.cpp \
	src/image/SkImage_Raster.cpp \
	src/image/SkImageShader.cpp \
	src/image/SkSurface.cpp \
	src/image/SkSurface_Raster.cpp \
	src/pathops/SkAddIntersections.cpp \
	src/pathops/SkDConicLineIntersection.cpp \
	src/pathops/SkDCubicLineIntersection.cpp \
	src/pathops/SkDCubicToQuads.cpp \
	src/pathops/SkDLineIntersection.cpp \
	src/pathops/SkDQuadLineIntersection.cpp \
	src/pathops/SkIntersections.cpp \
	src/pathops/SkOpAngle.cpp \
	src/pathops/SkOpBuilder.cpp \
	src/pathops/SkOpCoincidence.cpp \
	src/pathops/SkOpContour.cpp \
	src/pathops/SkOpCubicHull.cpp \
	src/pathops/SkOpEdgeBuilder.cpp \
	src/pathops/SkOpSegment.cpp \
	src/pathops/SkOpSpan.cpp \
	src/pathops/SkPathOpsCommon.cpp \
	src/pathops/SkPathOpsConic.cpp \
	src/pathops/SkPathOpsCubic.cpp \
	src/pathops/SkPathOpsCurve.cpp \
	src/pathops/SkPathOpsDebug.cpp \
	src/pathops/SkPathOpsLine.cpp \
	src/pathops/SkPathOpsOp.cpp \
	src/pathops/SkPathOpsPoint.cpp \
	src/pathops/SkPathOpsQuad.cpp \
	src/pathops/SkPathOpsRect.cpp \
	src/pathops/SkPathOpsSimplify.cpp \
	src/pathops/SkPathOpsTSect.cpp \
	src/pathops/SkPathOpsTightBounds.cpp \
	src/pathops/SkPathOpsTypes.cpp \
	src/pathops/SkPathOpsWinding.cpp \
	src/pathops/SkPathWriter.cpp \
	src/pathops/SkReduceOrder.cpp \
	src/effects/GrCircleBlurFragmentProcessor.cpp \
	src/effects/Sk1DPathEffect.cpp \
	src/effects/Sk2DPathEffect.cpp \
	src/effects/SkAlphaThresholdFilter.cpp \
	src/effects/SkArcToPathEffect.cpp \
	src/effects/SkArithmeticMode.cpp \
	src/effects/SkArithmeticMode_gpu.cpp \
	src/effects/SkAvoidXfermode.cpp \
	src/effects/SkBlurDrawLooper.cpp \
	src/effects/SkBlurMask.cpp \
	src/effects/SkBlurImageFilter.cpp \
	src/effects/SkBlurMaskFilter.cpp \
	src/effects/SkColorCubeFilter.cpp \
	src/effects/SkColorFilterImageFilter.cpp \
	src/effects/SkColorMatrix.cpp \
	src/effects/SkColorMatrixFilter.cpp \
	src/effects/SkComposeImageFilter.cpp \
	src/effects/SkCornerPathEffect.cpp \
	src/effects/SkDashPathEffect.cpp \
	src/effects/SkDiscretePathEffect.cpp \
	src/effects/SkDisplacementMapEffect.cpp \
	src/effects/SkDropShadowImageFilter.cpp \
	src/effects/SkEmbossMask.cpp \
	src/effects/SkEmbossMaskFilter.cpp \
	src/effects/SkImageSource.cpp \
	src/effects/SkGpuBlurUtils.cpp \
	src/effects/SkLayerDrawLooper.cpp \
	src/effects/SkLayerRasterizer.cpp \
	src/effects/SkLightingImageFilter.cpp \
	src/effects/SkLumaColorFilter.cpp \
	src/effects/SkMagnifierImageFilter.cpp \
	src/effects/SkMatrixConvolutionImageFilter.cpp \
	src/effects/SkMergeImageFilter.cpp \
	src/effects/SkMorphologyImageFilter.cpp \
	src/effects/SkOffsetImageFilter.cpp \
	src/effects/SkPackBits.cpp \
	src/effects/SkPaintFlagsDrawFilter.cpp \
	src/effects/SkPaintImageFilter.cpp \
	src/effects/SkPerlinNoiseShader.cpp \
	src/effects/SkPictureImageFilter.cpp \
	src/effects/SkPixelXorXfermode.cpp \
	src/effects/SkTableColorFilter.cpp \
	src/effects/SkTableMaskFilter.cpp \
	src/effects/SkTestImageFilters.cpp \
	src/effects/SkTileImageFilter.cpp \
	src/effects/SkXfermodeImageFilter.cpp \
	src/effects/gradients/Sk4fGradientBase.cpp \
	src/effects/gradients/Sk4fLinearGradient.cpp \
	src/effects/gradients/SkClampRange.cpp \
	src/effects/gradients/SkGradientBitmapCache.cpp \
	src/effects/gradients/SkGradientShader.cpp \
	src/effects/gradients/SkLinearGradient.cpp \
	src/effects/gradients/SkRadialGradient.cpp \
	src/effects/gradients/SkTwoPointConicalGradient.cpp \
	src/effects/gradients/SkTwoPointConicalGradient_gpu.cpp \
	src/effects/gradients/SkSweepGradient.cpp \
	src/gpu/GrAuditTrail.cpp \
	src/gpu/GrBatchAtlas.cpp \
	src/gpu/GrBatchFlushState.cpp \
	src/gpu/GrBatchTest.cpp \
	src/gpu/GrBlend.cpp \
	src/gpu/GrBlurUtils.cpp \
	src/gpu/GrBufferAllocPool.cpp \
	src/gpu/GrCaps.cpp \
	src/gpu/GrClip.cpp \
	src/gpu/GrClipMaskManager.cpp \
	src/gpu/GrContext.cpp \
	src/gpu/GrCoordTransform.cpp \
	src/gpu/GrDefaultGeoProcFactory.cpp \
	src/gpu/GrDrawContext.cpp \
	src/gpu/GrPathRenderingDrawContext.cpp \
	src/gpu/GrDrawingManager.cpp \
	src/gpu/GrDrawTarget.cpp \
	src/gpu/GrFragmentProcessor.cpp \
	src/gpu/GrGpu.cpp \
	src/gpu/GrGpuResource.cpp \
	src/gpu/GrGpuFactory.cpp \
	src/gpu/GrImageIDTextureAdjuster.cpp \
	src/gpu/GrInvariantOutput.cpp \
	src/gpu/GrLayerAtlas.cpp \
	src/gpu/GrLayerCache.cpp \
	src/gpu/GrLayerHoister.cpp \
	src/gpu/GrMemoryPool.cpp \
	src/gpu/GrOvalRenderer.cpp \
	src/gpu/GrPaint.cpp \
	src/gpu/GrPath.cpp \
	src/gpu/GrPathProcessor.cpp \
	src/gpu/GrPathRange.cpp \
	src/gpu/GrPathRendererChain.cpp \
	src/gpu/GrPathRenderer.cpp \
	src/gpu/GrPathRendering.cpp \
	src/gpu/GrPathUtils.cpp \
	src/gpu/GrPipeline.cpp \
	src/gpu/GrPipelineBuilder.cpp \
	src/gpu/GrPrimitiveProcessor.cpp \
	src/gpu/GrProgramElement.cpp \
	src/gpu/GrProcessor.cpp \
	src/gpu/GrProcessorUnitTest.cpp \
	src/gpu/GrProcOptInfo.cpp \
	src/gpu/GrGpuResourceRef.cpp \
	src/gpu/GrRecordReplaceDraw.cpp \
	src/gpu/GrRectanizer_pow2.cpp \
	src/gpu/GrRectanizer_skyline.cpp \
	src/gpu/GrRenderTarget.cpp \
	src/gpu/GrReducedClip.cpp \
	src/gpu/GrResourceCache.cpp \
	src/gpu/GrResourceProvider.cpp \
	src/gpu/GrStencil.cpp \
	src/gpu/GrStencilAttachment.cpp \
	src/gpu/GrStrokeInfo.cpp \
	src/gpu/GrTessellator.cpp \
	src/gpu/GrTraceMarker.cpp \
	src/gpu/GrTestUtils.cpp \
	src/gpu/GrSWMaskHelper.cpp \
	src/gpu/GrSoftwarePathRenderer.cpp \
	src/gpu/GrSurface.cpp \
	src/gpu/GrTexture.cpp \
	src/gpu/GrTextureParamsAdjuster.cpp \
	src/gpu/GrTextureProvider.cpp \
	src/gpu/GrTextureToYUVPlanes.cpp \
	src/gpu/GrTextureAccess.cpp \
	src/gpu/GrXferProcessor.cpp \
	src/gpu/GrYUVProvider.cpp \
	src/gpu/batches/GrAAHairLinePathRenderer.cpp \
	src/gpu/batches/GrAALinearizingConvexPathRenderer.cpp \
	src/gpu/batches/GrAAConvexTessellator.cpp \
	src/gpu/batches/GrAADistanceFieldPathRenderer.cpp \
	src/gpu/batches/GrAAConvexPathRenderer.cpp \
	src/gpu/batches/GrAAFillRectBatch.cpp \
	src/gpu/batches/GrAAStrokeRectBatch.cpp \
	src/gpu/batches/GrAtlasTextBatch.cpp \
	src/gpu/batches/GrBatch.cpp \
	src/gpu/batches/GrCopySurfaceBatch.cpp \
	src/gpu/batches/GrDashLinePathRenderer.cpp \
	src/gpu/batches/GrDefaultPathRenderer.cpp \
	src/gpu/batches/GrDrawBatch.cpp \
	src/gpu/batches/GrDrawAtlasBatch.cpp \
	src/gpu/batches/GrDrawPathBatch.cpp \
	src/gpu/batches/GrDrawVerticesBatch.cpp \
	src/gpu/batches/GrNonAAFillRectBatch.cpp \
	src/gpu/batches/GrNonAAStrokeRectBatch.cpp \
	src/gpu/batches/GrNinePatch.cpp \
	src/gpu/batches/GrPLSPathRenderer.cpp \
	src/gpu/batches/GrRectBatchFactory.cpp \
	src/gpu/batches/GrStencilAndCoverPathRenderer.cpp \
	src/gpu/batches/GrTessellatingPathRenderer.cpp \
	src/gpu/batches/GrVertexBatch.cpp \
	src/gpu/effects/GrConfigConversionEffect.cpp \
	src/gpu/effects/GrConstColorProcessor.cpp \
	src/gpu/effects/GrCoverageSetOpXP.cpp \
	src/gpu/effects/GrCustomXfermode.cpp \
	src/gpu/effects/GrBezierEffect.cpp \
	src/gpu/effects/GrConvolutionEffect.cpp \
	src/gpu/effects/GrConvexPolyEffect.cpp \
	src/gpu/effects/GrBicubicEffect.cpp \
	src/gpu/effects/GrBitmapTextGeoProc.cpp \
	src/gpu/effects/GrDashingEffect.cpp \
	src/gpu/effects/GrDisableColorXP.cpp \
	src/gpu/effects/GrDistanceFieldGeoProc.cpp \
	src/gpu/effects/GrDitherEffect.cpp \
	src/gpu/effects/GrMatrixConvolutionEffect.cpp \
	src/gpu/effects/GrOvalEffect.cpp \
	src/gpu/effects/GrPorterDuffXferProcessor.cpp \
	src/gpu/effects/GrRRectEffect.cpp \
	src/gpu/effects/GrSimpleTextureEffect.cpp \
	src/gpu/effects/GrSingleTextureEffect.cpp \
	src/gpu/effects/GrTextureDomain.cpp \
	src/gpu/effects/GrTextureStripAtlas.cpp \
	src/gpu/effects/GrXfermodeFragmentProcessor.cpp \
	src/gpu/effects/GrYUVEffect.cpp \
	src/gpu/text/GrAtlasTextBlob.cpp \
	src/gpu/text/GrAtlasTextBlob_regenInBatch.cpp \
	src/gpu/text/GrAtlasTextContext.cpp \
	src/gpu/text/GrBatchFontCache.cpp \
	src/gpu/text/GrDistanceFieldAdjustTable.cpp \
	src/gpu/text/GrFontScaler.cpp \
	src/gpu/text/GrStencilAndCoverTextContext.cpp \
	src/gpu/text/GrTextBlobCache.cpp \
	src/gpu/text/GrTextUtils.cpp \
	src/gpu/gl/GrGLAssembleInterface.cpp \
	src/gpu/gl/GrGLBufferImpl.cpp \
	src/gpu/gl/GrGLCaps.cpp \
	src/gpu/gl/GrGLContext.cpp \
	src/gpu/gl/GrGLGLSL.cpp \
	src/gpu/gl/GrGLGpu.cpp \
	src/gpu/gl/GrGLGpuProgramCache.cpp \
	src/gpu/gl/GrGLExtensions.cpp \
	src/gpu/gl/GrGLIndexBuffer.cpp \
	src/gpu/gl/GrGLInterface.cpp \
	src/gpu/gl/GrGLNoOpInterface.cpp \
	src/gpu/gl/GrGLPath.cpp \
	src/gpu/gl/GrGLPathRange.cpp \
	src/gpu/gl/GrGLPathRendering.cpp \
	src/gpu/gl/GrGLProgram.cpp \
	src/gpu/gl/GrGLProgramDesc.cpp \
	src/gpu/gl/GrGLProgramDataManager.cpp \
	src/gpu/gl/GrGLRenderTarget.cpp \
	src/gpu/gl/GrGLStencilAttachment.cpp \
	src/gpu/gl/GrGLTexture.cpp \
	src/gpu/gl/GrGLTextureRenderTarget.cpp \
	src/gpu/gl/GrGLTransferBuffer.cpp \
	src/gpu/gl/GrGLUtil.cpp \
	src/gpu/gl/GrGLUniformHandler.cpp \
	src/gpu/gl/GrGLVaryingHandler.cpp \
	src/gpu/gl/GrGLVertexArray.cpp \
	src/gpu/gl/GrGLVertexBuffer.cpp \
	src/gpu/gl/builders/GrGLProgramBuilder.cpp \
	src/gpu/gl/builders/GrGLShaderStringBuilder.cpp \
	src/gpu/gl/builders/GrGLSLPrettyPrint.cpp \
	src/gpu/glsl/GrGLSL.cpp \
	src/gpu/glsl/GrGLSLBlend.cpp \
	src/gpu/glsl/GrGLSLCaps.cpp \
	src/gpu/glsl/GrGLSLFragmentProcessor.cpp \
	src/gpu/glsl/GrGLSLFragmentShaderBuilder.cpp \
	src/gpu/glsl/GrGLSLGeometryProcessor.cpp \
	src/gpu/glsl/GrGLSLGeometryShaderBuilder.cpp \
	src/gpu/glsl/GrGLSLPrimitiveProcessor.cpp \
	src/gpu/glsl/GrGLSLProgramBuilder.cpp \
	src/gpu/glsl/GrGLSLProgramDataManager.cpp \
	src/gpu/glsl/GrGLSLShaderBuilder.cpp \
	src/gpu/glsl/GrGLSLUtil.cpp \
	src/gpu/glsl/GrGLSLVarying.cpp \
	src/gpu/glsl/GrGLSLVertexShaderBuilder.cpp \
	src/gpu/glsl/GrGLSLXferProcessor.cpp \
	src/gpu/SkGpuDevice.cpp \
	src/gpu/SkGpuDevice_drawTexture.cpp \
	src/gpu/SkGr.cpp \
	src/gpu/SkGrPixelRef.cpp \
	src/gpu/SkGrTexturePixelRef.cpp \
	src/image/SkImage_Gpu.cpp \
	src/image/SkSurface_Gpu.cpp \
	src/gpu/gl/SkGLContext.cpp \
	src/gpu/gl/GrGLDefaultInterface_native.cpp \
	src/gpu/gl/android/GrGLCreateNativeInterface_android.cpp \
	src/gpu/gl/egl/SkCreatePlatformGLContext_egl.cpp \
	src/gpu/gl/debug/GrGLCreateDebugInterface.cpp \
	src/gpu/gl/debug/GrBufferObj.cpp \
	src/gpu/gl/debug/GrTextureObj.cpp \
	src/gpu/gl/debug/GrTextureUnitObj.cpp \
	src/gpu/gl/debug/GrFrameBufferObj.cpp \
	src/gpu/gl/debug/GrShaderObj.cpp \
	src/gpu/gl/debug/GrProgramObj.cpp \
	src/gpu/gl/debug/GrDebugGL.cpp \
	src/gpu/gl/debug/SkDebugGLContext.cpp \
	src/gpu/gl/GrGLCreateNullInterface.cpp \
	src/gpu/gl/SkNullGLContext.cpp \
	src/images/bmpdecoderhelper.cpp \
	src/images/SkForceLinking.cpp \
	src/images/SkImageDecoder.cpp \
	src/images/SkImageDecoder_FactoryDefault.cpp \
	src/images/SkImageDecoder_FactoryRegistrar.cpp \
	src/images/SkImageDecoder_wbmp.cpp \
	src/images/SkImageDecoder_libbmp.cpp \
	src/images/SkImageDecoder_libgif.cpp \
	src/images/SkImageDecoder_libico.cpp \
	src/images/SkImageDecoder_libwebp.cpp \
	src/images/SkImageDecoder_libjpeg.cpp \
	src/images/SkImageDecoder_libpng.cpp \
	src/images/SkImageEncoder.cpp \
	src/images/SkImageEncoder_Factory.cpp \
	src/images/SkImageEncoder_argb.cpp \
	src/images/SkJpegUtility.cpp \
	src/images/SkMovie.cpp \
	src/images/SkMovie_gif.cpp \
	src/images/SkPageFlipper.cpp \
	src/images/SkScaledBitmapSampler.cpp \
	src/doc/SkDocument_PDF.cpp \
	src/pdf/SkDeflate.cpp \
	src/pdf/SkJpegInfo.cpp \
	src/pdf/SkPDFBitmap.cpp \
	src/pdf/SkPDFCanon.cpp \
	src/pdf/SkPDFDevice.cpp \
	src/pdf/SkPDFFont.cpp \
	src/pdf/SkPDFFormXObject.cpp \
	src/pdf/SkPDFGraphicState.cpp \
	src/pdf/SkPDFMetadata.cpp \
	src/pdf/SkPDFResourceDict.cpp \
	src/pdf/SkPDFShader.cpp \
	src/pdf/SkPDFStream.cpp \
	src/pdf/SkPDFTypes.cpp \
	src/pdf/SkPDFUtils.cpp \
	src/core/SkForceCPlusPlusLinking.cpp \
	src/fonts/SkFontMgr_indirect.cpp \
	src/fonts/SkRemotableFontMgr.cpp \
	src/ports/SkFontMgr_android_factory.cpp \
	src/ports/SkGlobalInitialization_default.cpp \
	src/ports/SkMemory_malloc.cpp \
	src/ports/SkOSEnvironment.cpp \
	src/ports/SkOSFile_posix.cpp \
	src/ports/SkOSFile_stdio.cpp \
	src/ports/SkOSLibrary_posix.cpp \
	src/ports/SkDiscardableMemory_none.cpp \
	src/ports/SkTime_Unix.cpp \
	src/ports/SkTLS_pthread.cpp \
	src/ports/SkFontHost_FreeType.cpp \
	src/ports/SkFontHost_FreeType_common.cpp \
	src/ports/SkFontMgr_android.cpp \
	src/ports/SkFontMgr_android_parser.cpp \
	src/ports/SkFontMgr_custom.cpp \
	src/ports/SkDebug_android.cpp \
	src/sfnt/SkOTTable_name.cpp \
	src/sfnt/SkOTUtils.cpp \
	src/utils/SkBase64.cpp \
	src/utils/SkBitmapSourceDeserializer.cpp \
	src/utils/SkBitSet.cpp \
	src/utils/SkBoundaryPatch.cpp \
	src/utils/SkFrontBufferedStream.cpp \
	src/utils/SkCamera.cpp \
	src/utils/SkCanvasStack.cpp \
	src/utils/SkCanvasStateUtils.cpp \
	src/utils/SkDashPath.cpp \
	src/utils/SkDumpCanvas.cpp \
	src/utils/SkEventTracer.cpp \
	src/utils/SkImageGeneratorUtils.cpp \
	src/utils/SkInterpolator.cpp \
	src/utils/SkLayer.cpp \
	src/utils/SkMatrix22.cpp \
	src/utils/SkMatrix44.cpp \
	src/utils/SkMD5.cpp \
	src/utils/SkMeshUtils.cpp \
	src/utils/SkNinePatch.cpp \
	src/utils/SkNWayCanvas.cpp \
	src/utils/SkNullCanvas.cpp \
	src/utils/SkOSFile.cpp \
	src/utils/SkPaintFilterCanvas.cpp \
	src/utils/SkParse.cpp \
	src/utils/SkParseColor.cpp \
	src/utils/SkParsePath.cpp \
	src/utils/SkPatchGrid.cpp \
	src/utils/SkPatchUtils.cpp \
	src/utils/SkRGBAToYUV.cpp \
	src/utils/SkRTConf.cpp \
	src/utils/SkTextBox.cpp \
	src/utils/SkTextureCompressor.cpp \
	src/utils/SkTextureCompressor_ASTC.cpp \
	src/utils/SkTextureCompressor_R11EAC.cpp \
	src/utils/SkTextureCompressor_LATC.cpp \
	src/utils/SkThreadUtils_pthread.cpp \
	src/utils/SkWhitelistTypefaces.cpp \
	src/fonts/SkGScalerContext.cpp \
	src/fonts/SkRandomScalerContext.cpp \
	src/fonts/SkTestScalerContext.cpp \
	src/codec/SkRawAdapterCodec.cpp \
	src/codec/SkRawCodec.cpp \
	third_party/etc1/etc1.cpp \
	third_party/ktx/ktx.cpp

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libGLESv2 \
	libEGL \
	libz \
	libexpat \
	libjpeg \
	libpng \
	libicuuc \
	libicui18n \
	libft2 \
	libdng_sdk \
	libpiex \
	libexpat \
	libcutils

LOCAL_STATIC_LIBRARIES := \
	libgif \
	libwebp-decode \
	libwebp-encode \
	libsfntly


LOCAL_C_INCLUDES := \
	external/libjpeg-turbo \
	external/libpng \
	$(LOCAL_PATH)/include/codec \
	$(LOCAL_PATH)/include/private \
	$(LOCAL_PATH)/src/codec \
	$(LOCAL_PATH)/src/core \
	$(LOCAL_PATH)/src/utils \
	$(LOCAL_PATH)/include/c \
	$(LOCAL_PATH)/include/config \
	$(LOCAL_PATH)/include/core \
	$(LOCAL_PATH)/include/pathops \
	external/giflib \
	external/webp/include \
	$(LOCAL_PATH)/include/android \
	$(LOCAL_PATH)/src/android \
	$(LOCAL_PATH)/include/ports \
	$(LOCAL_PATH)/include/utils \
	$(LOCAL_PATH)/include/images \
	$(LOCAL_PATH)/src/sfnt \
	$(LOCAL_PATH)/src/image \
	$(LOCAL_PATH)/src/opts \
	$(LOCAL_PATH)/include/gpu \
	$(LOCAL_PATH)/src/gpu \
	$(LOCAL_PATH)/include/effects \
	$(LOCAL_PATH)/include/client/android \
	$(LOCAL_PATH)/src/effects \
	$(LOCAL_PATH)/third_party/etc1 \
	$(LOCAL_PATH)/third_party/ktx \
	$(LOCAL_PATH)/src/lazy \
	external/expat/lib \
	external/freetype/include \
	$(LOCAL_PATH)/include/utils/win \
	$(LOCAL_PATH)/src/ports \
	$(LOCAL_PATH)/src/pdf \
	external/sfntly/cpp/src \
	external/zlib \
	external/dng_sdk \
	external/piex

LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)/include/codec \
	$(LOCAL_PATH)/include/android \
	$(LOCAL_PATH)/include/c \
	$(LOCAL_PATH)/include/config \
	$(LOCAL_PATH)/include/core \
	$(LOCAL_PATH)/include/pathops \
	$(LOCAL_PATH)/include/effects \
	$(LOCAL_PATH)/include/client/android \
	$(LOCAL_PATH)/include/gpu \
	$(LOCAL_PATH)/include/images \
	$(LOCAL_PATH)/include/ports \
	$(LOCAL_PATH)/include/utils \
	$(LOCAL_PATH)/src/utils

LOCAL_MODULE := \
	libskia_static

LOCAL_SRC_FILES_arm += \
	src/core/SkUtilsArm.cpp \
	src/opts/SkBitmapProcState_opts_arm.cpp \
	src/opts/SkBlitMask_opts_arm.cpp \
	src/opts/SkBlitRow_opts_arm.cpp

LOCAL_CFLAGS_arm += \
	-DqDNGBigEndian=0

ifeq ($(ARCH_ARM_HAVE_NEON), true)
LOCAL_SRC_FILES_arm += \
	src/opts/SkBitmapProcState_arm_neon.cpp \
	src/opts/SkBitmapProcState_matrixProcs_neon.cpp \
	src/opts/SkBlitMask_opts_arm_neon.cpp \
	src/opts/SkBlitRow_opts_arm_neon.cpp \
	src/opts/SkOpts_neon.cpp

LOCAL_CFLAGS_arm += \
	-DSK_ARM_HAS_NEON

endif

LOCAL_CFLAGS_x86 += \
	-msse2 \
	-mfpmath=sse

LOCAL_SRC_FILES_x86 += \
	src/opts/SkBitmapFilter_opts_SSE2.cpp \
	src/opts/SkBitmapProcState_opts_SSE2.cpp \
	src/opts/SkBlitRow_opts_SSE2.cpp \
	src/opts/opts_check_x86.cpp \
	src/opts/SkBitmapProcState_opts_SSSE3.cpp \
	src/opts/SkOpts_ssse3.cpp \
	src/opts/SkBlitRow_opts_SSE4.cpp \
	src/opts/SkOpts_sse41.cpp

LOCAL_CFLAGS_x86 += \
	-DqDNGBigEndian=0

LOCAL_SRC_FILES_x86_64 += \
	src/opts/SkBitmapFilter_opts_SSE2.cpp \
	src/opts/SkBitmapProcState_opts_SSE2.cpp \
	src/opts/SkBlitRow_opts_SSE2.cpp \
	src/opts/opts_check_x86.cpp \
	src/opts/SkBitmapProcState_opts_SSSE3.cpp \
	src/opts/SkOpts_ssse3.cpp \
	src/opts/SkBlitRow_opts_SSE4.cpp \
	src/opts/SkOpts_sse41.cpp

LOCAL_CFLAGS_mips += \
	-EL

LOCAL_SRC_FILES_mips += \
	src/opts/SkBitmapProcState_opts_none.cpp \
	src/opts/SkBlitMask_opts_none.cpp \
	src/opts/SkBlitRow_opts_none.cpp

LOCAL_CFLAGS_mips64 += \
	-EL

LOCAL_SRC_FILES_mips64 += \
	src/opts/SkBitmapProcState_opts_none.cpp \
	src/opts/SkBlitMask_opts_none.cpp \
	src/opts/SkBlitRow_opts_none.cpp

LOCAL_SRC_FILES_arm64 += \
	src/opts/SkBitmapProcState_arm_neon.cpp \
	src/opts/SkBitmapProcState_matrixProcs_neon.cpp \
	src/opts/SkBitmapProcState_opts_arm.cpp \
	src/opts/SkBlitMask_opts_arm.cpp \
	src/opts/SkBlitMask_opts_arm_neon.cpp \
	src/opts/SkBlitRow_opts_arm.cpp \
	src/opts/SkBlitRow_opts_arm_neon.cpp \
	src/opts/SkOpts_neon.cpp

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
include $(BUILD_STATIC_LIBRARY)


###############################################################################
# SHARED LIBRARY
###############################################################################

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libskia
LOCAL_WHOLE_STATIC_LIBRARIES := libskia_static
LOCAL_SHARED_LIBRARIES := \
        libcutils

ifeq ($(TARGET_HAVE_QC_PERF),true)
        LOCAL_WHOLE_STATIC_LIBRARIES += libqc-skia
endif

LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)/include/codec \
	$(LOCAL_PATH)/include/android \
	$(LOCAL_PATH)/include/c \
	$(LOCAL_PATH)/include/config \
	$(LOCAL_PATH)/include/core \
	$(LOCAL_PATH)/include/pathops \
	$(LOCAL_PATH)/include/effects \
	$(LOCAL_PATH)/include/client/android \
	$(LOCAL_PATH)/include/gpu \
	$(LOCAL_PATH)/include/images \
	$(LOCAL_PATH)/include/ports \
	$(LOCAL_PATH)/include/utils \
	$(LOCAL_PATH)/src/utils

include $(BASE_PATH)/skia_static_deps.mk
include $(BUILD_SHARED_LIBRARY)

