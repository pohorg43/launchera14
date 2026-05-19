.class public final synthetic Landroidx/constraintlayout/core/state/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/state/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/h;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInterpolation(F)F
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/state/h;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/Transition;->f(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method
