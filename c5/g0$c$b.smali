.class public final Lc5/g0$c$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/g0$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/q0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/g0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/g0$c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/g0$c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/g0$c<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/g0$c$b;->a:Lc5/g0$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lc5/g0$c$b;->a:Lc5/g0$c;

    invoke-virtual {v0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object v0

    invoke-virtual {v0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-interface {v0}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object p0, p0, Lc5/g0$c$b;->a:Lc5/g0$c;

    invoke-virtual {p0}, Lc5/g0$a;->m()Lc5/g0;

    move-result-object p0

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    sget v0, Lj5/h;->I:I

    sget-object v0, Lj5/h$a;->b:Lj5/h;

    invoke-static {p0, v0, v0}, Lk6/h;->d(Li5/o0;Lj5/h;Lj5/h;)Ll5/h0;

    move-result-object v0

    :cond_22
    return-object v0
.end method
