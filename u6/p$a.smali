.class public final Lu6/p$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/p;-><init>(Lh6/c;Lx6/m;Li5/e0;Lc6/m;Le6/a;Lw6/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/b;",
        "Li5/v0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/p;


# direct methods
.method public constructor <init>(Lu6/p;)V
    .registers 2

    iput-object p1, p0, Lu6/p$a;->a:Lu6/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh6/b;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/p$a;->a:Lu6/p;

    iget-object p0, p0, Lu6/p;->i:Lw6/i;

    if-eqz p0, :cond_e

    goto :goto_15

    :cond_e
    sget-object p0, Li5/v0;->a:Li5/v0;

    const-string p1, "NO_SOURCE"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_15
    return-object p0
.end method
