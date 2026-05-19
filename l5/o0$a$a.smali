.class public final Ll5/o0$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/o0$a;->E(Li5/a;Lh6/f;I)Li5/e1;
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
        "Li5/f1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/o0$a;


# direct methods
.method public constructor <init>(Ll5/o0$a;)V
    .registers 2

    iput-object p1, p0, Ll5/o0$a$a;->a:Ll5/o0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Ll5/o0$a$a;->a:Ll5/o0$a;

    iget-object p0, p0, Ll5/o0$a;->l:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
