.class public final synthetic Lcom/android/launcher3/util/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/m;->a:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/util/m;->a:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->d(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
