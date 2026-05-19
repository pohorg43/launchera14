.class public Lcom/android/launcher3/PagedView$PageScrollsResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageScrollsResult"
.end annotation


# instance fields
.field public orientationChange:Z

.field public pagedOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field public scrollsChange:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(ZZLcom/android/launcher3/touch/PagedOrientationHandler;)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView$PageScrollsResult;->scrollsChange:Z

    iput-boolean p2, p0, Lcom/android/launcher3/PagedView$PageScrollsResult;->orientationChange:Z

    iput-object p3, p0, Lcom/android/launcher3/PagedView$PageScrollsResult;->pagedOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-void
.end method
