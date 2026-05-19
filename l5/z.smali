.class public final Ll5/z;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/c;",
        "Li5/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/a0;


# direct methods
.method public constructor <init>(Ll5/a0;)V
    .registers 2

    iput-object p1, p0, Ll5/z;->a:Ll5/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lh6/c;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ll5/z;->a:Ll5/a0;

    iget-object v0, p0, Ll5/a0;->f:Ll5/d0;

    iget-object v1, p0, Ll5/a0;->c:Lx6/m;

    invoke-interface {v0, p0, p1, v1}, Ll5/d0;->a(Ll5/a0;Lh6/c;Lx6/m;)Li5/l0;

    move-result-object p0

    return-object p0
.end method
