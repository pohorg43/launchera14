.class public final Lz5/b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lz5/g;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAbstractSignatureParts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSignatureParts.kt\norg/jetbrains/kotlin/load/java/typeEnhancement/AbstractSignatureParts$computeIndexedQualifiers$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n1#2:229\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz5/w;

.field public final synthetic b:[Lz5/g;


# direct methods
.method public constructor <init>(Lz5/w;[Lz5/g;)V
    .registers 3

    iput-object p1, p0, Lz5/b;->a:Lz5/w;

    iput-object p2, p0, Lz5/b;->b:[Lz5/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lz5/b;->a:Lz5/w;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lz5/w;->a:Ljava/util/Map;

    if-eqz v0, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz5/g;

    if-nez v0, :cond_2d

    :cond_1a
    iget-object p0, p0, Lz5/b;->b:[Lz5/g;

    if-ltz p1, :cond_27

    invoke-static {p0}, Li4/k;->A([Ljava/lang/Object;)I

    move-result v0

    if-gt p1, v0, :cond_27

    aget-object v0, p0, p1

    goto :goto_2d

    :cond_27
    sget-object p0, Lz5/g;->e:Lz5/g;

    sget-object p0, Lz5/g;->e:Lz5/g;

    sget-object v0, Lz5/g;->f:Lz5/g;

    :cond_2d
    :goto_2d
    return-object v0
.end method
