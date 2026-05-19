.class public Lcom/android/launcher3/util/OverScroller$SpringParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpringParams"
.end annotation


# instance fields
.field public damping:F

.field public stiffness:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/OverScroller$SpringParams;->stiffness:F

    iput p2, p0, Lcom/android/launcher3/util/OverScroller$SpringParams;->damping:F

    return-void
.end method
