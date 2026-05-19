.class public final Lv5/h$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/h;->n(Lh6/f;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Ljava/util/Collection<",
        "+",
        "Li5/u0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/h;


# direct methods
.method public constructor <init>(Lv5/h;)V
    .registers 2

    iput-object p1, p0, Lv5/h$d;->a:Lv5/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh6/f;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv5/h$d;->a:Lv5/h;

    invoke-static {p0, p1}, Lv5/h;->w(Lv5/h;Lh6/f;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
