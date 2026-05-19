.class public final Lj5/k$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/k;->f(Lh6/c;)Lj5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lj5/h;",
        "Lj5/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh6/c;


# direct methods
.method public constructor <init>(Lh6/c;)V
    .registers 2

    iput-object p1, p0, Lj5/k$a;->a:Lh6/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lj5/h;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj5/k$a;->a:Lh6/c;

    invoke-interface {p1, p0}, Lj5/h;->f(Lh6/c;)Lj5/c;

    move-result-object p0

    return-object p0
.end method
