.class public final Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule$TrackingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/internal/control/FeatureRule$TrackingStatus;",
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
        "io/branch/search/internal/control/FeatureRule.TrackingStatus.$serializer",
        "Lz7/w;",
        "Lio/branch/search/internal/control/FeatureRule$TrackingStatus;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureRule$TrackingStatus;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureRule$TrackingStatus;",
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

.field public static final INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "TrackingStatus"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    new-instance v0, Lz7/s;

    invoke-static {}, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->values()[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object v1

    const-string v2, "io.branch.search.BranchConfiguration.BranchTrackingStatus"

    invoke-direct {v0, v2, v1}, Lz7/s;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureRule$TrackingStatus;
    .registers 8

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object p1

    invoke-interface {p1}, Ly7/b;->q()Z

    move-result v0

    const-string v1, "io.branch.search.BranchConfiguration.BranchTrackingStatus"

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    new-instance v0, Lz7/s;

    invoke-static {}, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->values()[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lz7/s;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    invoke-interface {p1, p0, v2, v0}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    const v1, 0x7fffffff

    goto :goto_4b

    :cond_27
    const/4 v0, 0x0

    move v3, v2

    :goto_29
    invoke-interface {p1, p0}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4a

    if-nez v4, :cond_44

    new-instance v4, Lz7/s;

    invoke-static {}, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->values()[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lz7/s;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    invoke-interface {p1, p0, v2, v4, v0}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    or-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_44
    new-instance p0, Lw7/i;

    invoke-direct {p0, v4}, Lw7/i;-><init>(I)V

    throw p0

    :cond_4a
    move v1, v3

    :goto_4b
    invoke-interface {p1, p0}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-direct {p0, v1, v0}, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;-><init>(ILio/branch/search/BranchConfiguration$BranchTrackingStatus;)V

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureRule$TrackingStatus;)V
    .registers 6

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    const-string v0, "self"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, p0}, Lio/branch/search/internal/control/FeatureRule;->a(Lio/branch/search/internal/control/FeatureRule;Ly7/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lz7/s;

    invoke-static {}, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->values()[Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object v1

    const-string v2, "io.branch.search.BranchConfiguration.BranchTrackingStatus"

    invoke-direct {v0, v2, v1}, Lz7/s;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    iget-object p2, p2, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0, p2}, Ly7/c;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/h;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureRule$TrackingStatus;)V

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
