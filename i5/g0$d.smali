.class public final Li5/g0$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/g0;-><init>(Lx6/m;Li5/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/c;",
        "Li5/h0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/g0;


# direct methods
.method public constructor <init>(Li5/g0;)V
    .registers 2

    iput-object p1, p0, Li5/g0$d;->a:Li5/g0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh6/c;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll5/o;

    iget-object p0, p0, Li5/g0$d;->a:Li5/g0;

    iget-object p0, p0, Li5/g0;->b:Li5/e0;

    invoke-direct {v0, p0, p1}, Ll5/o;-><init>(Li5/e0;Lh6/c;)V

    return-object v0
.end method
