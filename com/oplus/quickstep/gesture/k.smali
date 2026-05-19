.class public final synthetic Lcom/oplus/quickstep/gesture/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/k;->a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/k;->a:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->R0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;F)F

    move-result p0

    return p0
.end method
