.class public final Ly6/o1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "La7/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/n1;


# direct methods
.method public constructor <init>(Ly6/n1;)V
    .registers 2

    iput-object p1, p0, Ly6/o1;->a:Ly6/n1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    sget-object v0, La7/i;->B0:La7/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object p0, p0, Ly6/o1;->a:Ly6/n1;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0
.end method
