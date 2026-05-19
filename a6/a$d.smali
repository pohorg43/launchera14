.class public final La6/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a;-><init>(Lx6/m;La6/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La6/t;",
        "La6/a$a<",
        "+TA;+TC;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:La6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La6/a<",
            "TA;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La6/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/a<",
            "TA;TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, La6/a$d;->a:La6/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    check-cast p1, La6/t;

    const-string v6, "kotlinClass"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, La6/a$d;->a:La6/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, La6/b;

    move-object v0, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, La6/b;-><init>(La6/a;Ljava/util/HashMap;La6/t;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v9, v0}, La6/t;->f(La6/t$d;[B)V

    new-instance p1, La6/a$a;

    invoke-direct {p1, p0, v7, v8}, La6/a$a;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method
