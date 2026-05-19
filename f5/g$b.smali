.class public Lf5/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/g;-><init>(Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lf5/g$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf5/g;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .registers 2

    iput-object p1, p0, Lf5/g$b;->a:Lf5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 11

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lf5/h;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lf5/h;->values()[Lf5/h;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_3f

    aget-object v6, v3, v5

    iget-object v7, p0, Lf5/g$b;->a:Lf5/g;

    iget-object v8, v6, Lf5/h;->a:Lh6/f;

    invoke-virtual {v8}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lf5/g;->b(Lf5/g;Ljava/lang/String;)Ly6/s0;

    move-result-object v7

    iget-object v8, p0, Lf5/g$b;->a:Lf5/g;

    iget-object v9, v6, Lf5/h;->b:Lh6/f;

    invoke-virtual {v9}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lf5/g;->b(Lf5/g;Ljava/lang/String;)Ly6/s0;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_3f
    new-instance p0, Lf5/g$d;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lf5/g$d;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lf5/g$a;)V

    return-object p0
.end method
