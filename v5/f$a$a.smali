.class public final Lv5/f$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/f$a;-><init>(Lv5/f;)V
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
        "Li5/a1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/f;


# direct methods
.method public constructor <init>(Lv5/f;)V
    .registers 2

    iput-object p1, p0, Lv5/f$a$a;->a:Lv5/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lv5/f$a$a;->a:Lv5/f;

    invoke-static {p0}, Li5/b1;->b(Li5/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
