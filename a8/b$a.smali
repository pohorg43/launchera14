.class public final La8/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:La8/b$a;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La8/b$a;

    invoke-direct {v0}, La8/b$a;-><init>()V

    sput-object v0, La8/b$a;->c:La8/b$a;

    const-string v0, "kotlinx.serialization.json.JsonArray"

    sput-object v0, La8/b$a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/util/List;

    sget-object v1, Lz4/t;->c:Lz4/t$a;

    const-class v2, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lz4/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz4/t$a;->a(Lz4/r;)Lz4/t;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lz4/t;)Lz4/r;

    move-result-object v0

    invoke-static {v0}, Le2/a;->f(Lz4/r;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iput-object v0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    iget-object p0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public c()I
    .registers 1

    iget-object p0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result p0

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    iget-object p0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public f()Lx7/i;
    .registers 1

    iget-object p0, p0, La8/b$a;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    sget-object p0, La8/b$a;->b:Ljava/lang/String;

    return-object p0
.end method
