.class public final synthetic Lcom/oplus/quickstep/gesture/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/l;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/l;->a:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->p0(Lkotlin/jvm/functions/Function1;F)F

    move-result p0

    return p0
.end method
