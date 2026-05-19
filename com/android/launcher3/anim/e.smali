.class public final synthetic Lcom/android/launcher3/anim/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/anim/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/e;

    invoke-direct {v0}, Lcom/android/launcher3/anim/e;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/e;->a:Lcom/android/launcher3/anim/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    check-cast p2, Landroid/animation/Animator;

    invoke-interface {p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
