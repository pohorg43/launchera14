.class public final Lc5/c0$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/c0;-><init>(Lc5/i;ILz4/m$a;Lkotlin/jvm/functions/Function0;)V
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
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/c0;


# direct methods
.method public constructor <init>(Lc5/c0;)V
    .registers 2

    iput-object p1, p0, Lc5/c0$a;->a:Lc5/c0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lc5/c0$a;->a:Lc5/c0;

    invoke-virtual {p0}, Lc5/c0;->b()Li5/m0;

    move-result-object p0

    invoke-static {p0}, Lc5/w0;->d(Lj5/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
