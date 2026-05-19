.class public Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/FloatingIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconLoadResult"
.end annotation


# instance fields
.field public badge:Landroid/graphics/drawable/Drawable;

.field public btvDrawable:Landroid/graphics/drawable/Drawable;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public fetchFailed:Z

.field public hasStyleBounds:Z

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public iconOffset:I

.field public isAlreadyLoadByLocal:Z

.field public isIconCanClamped:Z

.field public isIconLoaded:Z

.field public isOpening:Z

.field public final isThemed:Z

.field public final itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public onIconLoaded:Ljava/lang/Runnable;

.field public uxForegroudScale:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->fetchFailed:Z

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-boolean p2, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    return-void
.end method
