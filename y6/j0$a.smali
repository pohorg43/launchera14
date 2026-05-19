.class public final Ly6/j0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/j0;->h()Ly6/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz6/f;",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/j0;


# direct methods
.method public constructor <init>(Ly6/j0;)V
    .registers 2

    iput-object p1, p0, Ly6/j0$a;->a:Ly6/j0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lz6/f;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/j0$a;->a:Ly6/j0;

    invoke-virtual {p0, p1}, Ly6/j0;->j(Lz6/f;)Ly6/j0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/j0;->h()Ly6/s0;

    move-result-object p0

    return-object p0
.end method
