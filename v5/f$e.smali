.class public final Lv5/f$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/f;-><init>(Lu5/g;Li5/l;Ly5/g;Li5/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz6/f;",
        "Lv5/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/f;


# direct methods
.method public constructor <init>(Lv5/f;)V
    .registers 2

    iput-object p1, p0, Lv5/f$e;->a:Lv5/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Lz6/f;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lv5/h;

    iget-object v3, p0, Lv5/f$e;->a:Lv5/f;

    iget-object v2, v3, Lv5/f;->k:Lu5/g;

    iget-object v4, v3, Lv5/f;->i:Ly5/g;

    iget-object p0, v3, Lv5/f;->j:Li5/e;

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    move v5, p0

    iget-object v6, v3, Lv5/f;->r:Lv5/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lv5/h;-><init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V

    return-object p1
.end method
