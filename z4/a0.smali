.class public final Lz4/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/lang/reflect/Type;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/WildcardTypeImpl\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,230:1\n26#2:231\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/WildcardTypeImpl\n*L\n163#1:231\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lz4/a0;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/reflect/Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz4/a0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lz4/a0;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    sput-object v0, Lz4/a0;->c:Lz4/a0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/a0;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lz4/a0;->b:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lz4/a0;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lz4/a0;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 3

    iget-object p0, p0, Lz4/a0;->b:Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    new-array p0, v0, [Ljava/lang/reflect/Type;

    goto :goto_e

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object p0, v1, v0

    move-object p0, v1

    :goto_e
    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lz4/a0;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_18

    const-string v0, "? super "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lz4/a0;->b:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lz4/y;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    :cond_18
    iget-object v0, p0, Lz4/a0;->a:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_38

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "? extends "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lz4/a0;->a:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lz4/y;->a(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3a

    :cond_38
    const-string p0, "?"

    :goto_3a
    return-object p0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object p0, p0, Lz4/a0;->a:Ljava/lang/reflect/Type;

    if-nez p0, :cond_9

    const-class p0, Ljava/lang/Object;

    :cond_9
    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lz4/a0;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lz4/a0;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lz4/a0;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
