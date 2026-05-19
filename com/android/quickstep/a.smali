.class public final synthetic Lcom/android/quickstep/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/a;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/a;->a:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->G(Lcom/android/quickstep/AbsSwipeUpHandler;F)F

    move-result p0

    return p0
.end method
