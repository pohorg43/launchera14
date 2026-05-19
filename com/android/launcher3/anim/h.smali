.class public final synthetic Lcom/android/launcher3/anim/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/anim/AppTransitionSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/AppTransitionSpringAnim;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/h;->a:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/anim/h;->a:Lcom/android/launcher3/anim/AppTransitionSpringAnim;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/AppTransitionSpringAnim;->a(Lcom/android/launcher3/anim/AppTransitionSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method
