.class public final Ll5/t$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/t;-><init>(Ll5/a0;Lh6/c;Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Li5/h0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/t;


# direct methods
.method public constructor <init>(Ll5/t;)V
    .registers 2

    iput-object p1, p0, Ll5/t$b;->a:Ll5/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ll5/t$b;->a:Ll5/t;

    iget-object v0, v0, Ll5/t;->c:Ll5/a0;

    invoke-virtual {v0}, Ll5/a0;->D0()Li5/i0;

    move-result-object v0

    iget-object p0, p0, Ll5/t$b;->a:Ll5/t;

    iget-object p0, p0, Ll5/t;->d:Lh6/c;

    invoke-static {v0, p0}, Lv1/k;->e(Li5/i0;Lh6/c;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
