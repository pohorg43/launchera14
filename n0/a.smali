.class public final synthetic Ln0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final synthetic a:Ln0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    sput-object v0, Ln0/a;->a:Ln0/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method
