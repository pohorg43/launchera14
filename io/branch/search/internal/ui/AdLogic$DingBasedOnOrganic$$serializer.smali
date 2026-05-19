.class public final Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J \u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000e0\rHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118V@\u0016XÖ\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"
    }
    d2 = {
        "io/branch/search/internal/ui/AdLogic.DingBasedOnOrganic.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "childSerializers",
        "()[Lkotlinx/serialization/KSerializer;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "<init>",
        "()V",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "DingBasedOnOrganic"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "toRank"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "resolver"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lz7/d0;->b:Lz7/d0;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;
    .registers 9

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object p1

    invoke-interface {p1}, Ly7/b;->q()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    invoke-interface {p1, p0, v2}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v0

    sget-object v2, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-interface {p1, p0, v1, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/LinkEntityResolver;

    const v2, 0x7fffffff

    goto :goto_4c

    :cond_23
    const/4 v0, 0x0

    move-object v3, v0

    move v0, v2

    move v4, v0

    :goto_27
    invoke-interface {p1, p0}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4a

    if-eqz v5, :cond_43

    if-ne v5, v1, :cond_3d

    sget-object v5, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-interface {p1, p0, v1, v5, v3}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/LinkEntityResolver;

    or-int/lit8 v4, v4, 0x2

    goto :goto_27

    :cond_3d
    new-instance p0, Lw7/i;

    invoke-direct {p0, v5}, Lw7/i;-><init>(I)V

    throw p0

    :cond_43
    invoke-interface {p1, p0, v2}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v0

    or-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_4a
    move-object v1, v3

    move v2, v4

    :goto_4c
    invoke-interface {p1, p0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-direct {p0, v2, v0, v1}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;-><init>(IILio/branch/search/internal/ui/LinkEntityResolver;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;)V
    .registers 7

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "output"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "serialDesc"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_32

    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v3

    :goto_33
    if-nez v0, :cond_3b

    invoke-interface {p1, p0, v3}, Ly7/c;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3b
    iget v0, p2, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    invoke-interface {p1, p0, v3, v0}, Ly7/c;->r(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_40
    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    iget-object p2, p2, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    invoke-interface {p1, p0, v2, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    sget-object p0, Lz7/y0;->a:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method
