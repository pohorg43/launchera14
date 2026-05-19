.class public final Lz8/g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lz8/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;I)V
    .registers 6

    iput p1, p0, Lz8/g;->a:I

    iput p2, p0, Lz8/g;->b:I

    iput p3, p0, Lz8/g;->c:I

    iput-object p4, p0, Lz8/g;->d:Ljava/lang/String;

    iput p5, p0, Lz8/g;->e:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lz8/c;

    iget v2, p0, Lz8/g;->a:I

    iget v3, p0, Lz8/g;->b:I

    iget v4, p0, Lz8/g;->c:I

    iget-object v5, p0, Lz8/g;->d:Ljava/lang/String;

    iget v6, p0, Lz8/g;->e:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lz8/c;-><init>(IIILjava/lang/String;I)V

    return-object p1
.end method
