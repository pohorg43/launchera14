.class public final Lu6/f0$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/f0;->j(Lu6/f0;Lc6/q;I)Li5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lc6/q;",
        "Lc6/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/f0;


# direct methods
.method public constructor <init>(Lu6/f0;)V
    .registers 2

    iput-object p1, p0, Lu6/f0$e;->a:Lu6/f0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lc6/q;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lu6/f0$e;->a:Lu6/f0;

    iget-object p0, p0, Lu6/f0;->a:Lu6/m;

    iget-object p0, p0, Lu6/m;->d:Le6/g;

    invoke-static {p1, p0}, Le6/f;->c(Lc6/q;Le6/g;)Lc6/q;

    move-result-object p0

    return-object p0
.end method
