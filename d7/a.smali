.class public final Ld7/a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/d2;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ld7/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld7/a;

    invoke-direct {v0}, Ld7/a;-><init>()V

    sput-object v0, Ld7/a;->a:Ld7/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ly6/d2;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/a1;

    if-eqz v0, :cond_26

    check-cast p0, Li5/a1;

    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object p0

    instance-of p0, p0, Li5/z0;

    if-eqz p0, :cond_26

    const/4 p1, 0x1

    :cond_26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
