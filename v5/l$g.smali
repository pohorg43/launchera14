.class public final Lv5/l$g;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/l;-><init>(Lu5/g;Lv5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lv5/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;


# direct methods
.method public constructor <init>(Lv5/l;)V
    .registers 2

    iput-object p1, p0, Lv5/l$g;->a:Lv5/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lv5/l$g;->a:Lv5/l;

    invoke-virtual {p0}, Lv5/l;->k()Lv5/b;

    move-result-object p0

    return-object p0
.end method
