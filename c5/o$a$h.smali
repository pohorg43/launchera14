.class public final Lc5/o$a$h;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/o$a;-><init>(Lc5/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Lc5/i<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/o;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/o<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/o$a$h;->a:Lc5/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lc5/o$a$h;->a:Lc5/o;

    invoke-virtual {p0}, Lc5/o;->u()Lr6/i;

    move-result-object v0

    sget-object v1, Lc5/t$c;->a:Lc5/t$c;

    invoke-virtual {p0, v0, v1}, Lc5/t;->i(Lr6/i;Lc5/t$c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
