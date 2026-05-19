.class public final Lz7/m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lh4/o<",
        "+TA;+TB;+TC;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final b:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TA;>;"
        }
    .end annotation
.end field

.field public final c:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final d:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TA;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TB;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "aSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cSerializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/m1;->b:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Lz7/m1;->c:Lkotlinx/serialization/KSerializer;

    iput-object p3, p0, Lz7/m1;->d:Lkotlinx/serialization/KSerializer;

    new-instance p1, Lz7/m1$a;

    invoke-direct {p1, p0}, Lz7/m1$a;-><init>(Lz7/m1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string p3, "kotlin.Triple"

    invoke-static {p3, p2, p1}, Lx7/h;->a(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 16

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object p1

    invoke-interface {p1}, Ly7/b;->q()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v2, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x0

    iget-object v4, p0, Lz7/m1;->b:Lkotlinx/serialization/KSerializer;

    const/4 v0, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v1, p1

    move-object v5, v10

    move v6, v11

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iget-object v2, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x1

    iget-object v4, p0, Lz7/m1;->c:Lkotlinx/serialization/KSerializer;

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iget-object v2, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x2

    iget-object v4, p0, Lz7/m1;->d:Lkotlinx/serialization/KSerializer;

    move-object v5, v0

    move v6, v8

    move-object v7, v9

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p0, Lh4/o;

    invoke-direct {p0, v13, v10, v0}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_aa

    :cond_46
    sget-object v0, Lz7/n1;->a:Ljava/lang/Object;

    sget-object v0, Lz7/n1;->a:Ljava/lang/Object;

    move-object v8, v0

    move-object v9, v8

    :goto_4c
    iget-object v1, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v1}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_96

    if-eqz v1, :cond_87

    const/4 v2, 0x1

    if-eq v1, v2, :cond_78

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6c

    iget-object v2, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x2

    iget-object v4, p0, Lz7/m1;->d:Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_4c

    :cond_6c
    new-instance p0, Lw7/g;

    const-string p1, "Unexpected index "

    invoke-static {p1, v1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lw7/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    iget-object v2, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x1

    iget-object v4, p0, Lz7/m1;->c:Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4c

    :cond_87
    iget-object v2, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v3, 0x0

    iget-object v4, p0, Lz7/m1;->b:Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ly7/b$a;->a(Ly7/b;Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4c

    :cond_96
    iget-object p0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object p0, Lz7/n1;->a:Ljava/lang/Object;

    sget-object p0, Lz7/n1;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_bb

    if-eq v8, p0, :cond_b3

    if-eq v9, p0, :cond_ab

    new-instance p0, Lh4/o;

    invoke-direct {p0, v0, v8, v9}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_aa
    return-object p0

    :cond_ab
    new-instance p0, Lw7/g;

    const-string p1, "Element \'third\' is missing"

    invoke-direct {p0, p1}, Lw7/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b3
    new-instance p0, Lw7/g;

    const-string p1, "Element \'second\' is missing"

    invoke-direct {p0, p1}, Lw7/g;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bb
    new-instance p0, Lw7/g;

    const-string p1, "Element \'first\' is missing"

    invoke-direct {p0, p1}, Lw7/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    iget-object p0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lh4/o;

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    iget-object v0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v1, 0x0

    iget-object v2, p0, Lz7/m1;->b:Lkotlinx/serialization/KSerializer;

    iget-object v3, p2, Lh4/o;->a:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2, v3}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    iget-object v0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v1, 0x1

    iget-object v2, p0, Lz7/m1;->c:Lkotlinx/serialization/KSerializer;

    iget-object v3, p2, Lh4/o;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2, v3}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    iget-object v0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/4 v1, 0x2

    iget-object v2, p0, Lz7/m1;->d:Lkotlinx/serialization/KSerializer;

    iget-object p2, p2, Lh4/o;->c:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    iget-object p0, p0, Lz7/m1;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
