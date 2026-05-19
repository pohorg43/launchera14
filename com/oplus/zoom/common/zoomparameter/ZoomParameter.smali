.class public interface abstract Lcom/oplus/zoom/common/zoomparameter/ZoomParameter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SCREEN_LARGE:I = 0x3

.field public static final SCREEN_MIDDLE:I = 0x2

.field public static final SCREEN_SMALL:I = 0x1


# virtual methods
.method public abstract getDefaultMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
.end method

.method public abstract getDefaultMiniZoomRectForDisplayChange(Landroid/graphics/Rect;ILcom/oplus/zoom/common/ZoomPositionInfo;)Landroid/graphics/Rect;
.end method

.method public abstract getDefaultMiniZoomScale(ZZ)F
.end method

.method public abstract getDefaultMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;
.end method

.method public abstract getDefaultSuperMiniPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
.end method

.method public abstract getDefaultSuperMiniZoomScaleRect(ZZ)Landroid/graphics/Rect;
.end method

.method public abstract getDefaultZoomBound(ZZ)Landroid/graphics/Rect;
.end method

.method public abstract getDefaultZoomPositionInfo(ZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
.end method

.method public abstract getDefaultZoomPositionInfoInHandle(ZZZ)Lcom/oplus/zoom/common/ZoomPositionInfo;
.end method

.method public abstract getDefaultZoomScale(ZZ)F
.end method

.method public abstract getDefaultZoomScaleRect(ZZ)Landroid/graphics/Rect;
.end method

.method public abstract getLeftRightLimitInMini(Z)I
.end method

.method public abstract getLeftRightLimitInSuperMini(Z)I
.end method

.method public abstract getMaxMiniZoomScale(ZZ)F
.end method

.method public abstract getMaxZoomScale(ZZ)F
.end method

.method public abstract getMinMiniZoomScale(ZZ)F
.end method

.method public abstract getScreenType()I
.end method

.method public abstract getSuperMiniZoomScale(Z)F
.end method

.method public abstract getTopBottomLimitInMini(Z)I
.end method

.method public abstract getTopBottomLimitInSuperMini(Z)I
.end method

.method public abstract getTopLimitInZoom(Z)I
.end method

.method public abstract getZoomCornerRadius(Z)I
.end method

.method public abstract initZoomDefaultInfo()V
.end method
