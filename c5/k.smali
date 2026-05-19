.class public final Lc5/k;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/r0;


# direct methods
.method public constructor <init>(Li5/r0;)V
    .registers 2

    iput-object p1, p0, Lc5/k;->a:Li5/r0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lc5/k;->a:Li5/r0;

    return-object p0
.end method
