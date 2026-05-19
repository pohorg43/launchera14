.class public final synthetic Lp0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/c;->a:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    iget-object p0, p0, Lp0/c;->a:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->c(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method
