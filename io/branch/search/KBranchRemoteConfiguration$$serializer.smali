.class public final Lio/branch/search/KBranchRemoteConfiguration$$serializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz7/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/KBranchRemoteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/w<",
        "Lio/branch/search/KBranchRemoteConfiguration;",
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
        "io/branch/search/KBranchRemoteConfiguration.$serializer",
        "Lz7/w;",
        "Lio/branch/search/KBranchRemoteConfiguration;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encoder",
        "value",
        "Lh4/z;",
        "serialize",
        "(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decoder",
        "deserialize",
        "(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KBranchRemoteConfiguration;",
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

.field public static final INSTANCE:Lio/branch/search/KBranchRemoteConfiguration$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;

    invoke-direct {v0}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->INSTANCE:Lio/branch/search/KBranchRemoteConfiguration$$serializer;

    new-instance v1, Lz7/x0;

    const-string v2, "io.branch.search.KBranchRemoteConfiguration"

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v0, v3}, Lz7/x0;-><init>(Ljava/lang/String;Lz7/w;I)V

    const-string v0, "enc_key"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "enc_key_id"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "network_data_retention_window"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "analytics_records_limit"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "fallback_latency_threshold"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "remote_latency_threshold"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "ads_zero_state_threshold"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "ping_job_cap"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "sdk_device_id"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "identity_cookies"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "network_capping_rules"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "app_usage_event_types"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "sqlite_max_cache_size"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "payload_upload_max_count"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "payload_upload_max_bytes"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "max_payloads_to_store_on_disk"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "enable_crash_reporting"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "enable_crash_filtering"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "crash_filtering_regex"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "search_skeleton"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "zero_state_skeleton"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "app_store_skeleton"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "app_store_query_param_bindings"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "app_store_use_api"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "error_ping_param_rule"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "max_url_impression_tracking_pos"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    const-string v0, "all_features"

    invoke-virtual {v1, v0, v2}, Lz7/x0;->h(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const-class p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    const-class v0, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/16 v1, 0x1b

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lz7/k1;->b:Lz7/k1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v5, Lz7/d0;->b:Lz7/d0;

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const/4 v6, 0x4

    aput-object v5, v1, v6

    invoke-static {v5}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v1, v7

    const/4 v6, 0x6

    aput-object v5, v1, v6

    const/4 v6, 0x7

    aput-object v5, v1, v6

    const/16 v6, 0x8

    aput-object v2, v1, v6

    new-instance v6, Lz7/h0;

    invoke-direct {v6, v2, v2}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v7, 0x9

    aput-object v6, v1, v7

    new-instance v6, Lz7/f;

    sget-object v7, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v6, v7}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v7, 0xa

    aput-object v6, v1, v7

    new-instance v6, Lz7/f;

    invoke-direct {v6, v5}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v7, 0xb

    aput-object v6, v1, v7

    const/16 v6, 0xc

    aput-object v5, v1, v6

    const/16 v6, 0xd

    aput-object v5, v1, v6

    sget-object v6, Lz7/o0;->b:Lz7/o0;

    const/16 v7, 0xe

    aput-object v6, v1, v7

    const/16 v6, 0xf

    aput-object v5, v1, v6

    sget-object v6, Lz7/i;->b:Lz7/i;

    const/16 v7, 0x10

    aput-object v6, v1, v7

    const/16 v7, 0x11

    aput-object v6, v1, v7

    const/16 v7, 0x12

    aput-object v2, v1, v7

    new-instance v7, Lw7/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    new-array v9, v4, [Lz4/d;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    aput-object v10, v9, v3

    new-array v10, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v11, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v11, v10, v3

    const-string v12, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v7, v12, v8, v9, v10}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v8, 0x13

    aput-object v7, v1, v8

    new-instance v7, Lw7/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    new-array v9, v4, [Lz4/d;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    aput-object v10, v9, v3

    new-array v10, v4, [Lkotlinx/serialization/KSerializer;

    aput-object v11, v10, v3

    invoke-direct {v7, v12, v8, v9, v10}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v8, 0x14

    aput-object v7, v1, v8

    new-instance v7, Lw7/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    new-array v8, v4, [Lz4/d;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    aput-object p0, v8, v3

    new-array p0, v4, [Lkotlinx/serialization/KSerializer;

    aput-object v11, p0, v3

    invoke-direct {v7, v12, v0, v8, p0}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 p0, 0x15

    aput-object v7, v1, p0

    new-instance p0, Lz7/h0;

    invoke-direct {p0, v2, v2}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v0, 0x16

    aput-object p0, v1, v0

    const/16 p0, 0x17

    aput-object v6, v1, p0

    new-instance p0, Lz7/f;

    invoke-direct {p0, v2}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v0, 0x18

    aput-object p0, v1, v0

    invoke-static {v5}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v0, 0x19

    aput-object p0, v1, v0

    sget-object p0, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    const/16 v0, 0x1a

    aput-object p0, v1, v0

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KBranchRemoteConfiguration;
    .registers 83

    move-object/from16 v0, p1

    const-class v1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    const-class v2, Lio/branch/search/internal/ui/UISkeletonResolver;

    const-string v3, "decoder"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v3}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;

    move-result-object v0

    invoke-interface {v0}, Ly7/b;->q()Z

    move-result v4

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v5, 0x3

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x2

    const-string v9, "io.branch.search.internal.ui.UISkeletonResolver"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_187

    invoke-interface {v0, v3, v11}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v10}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v0, v3, v8}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    invoke-interface {v0, v3, v5}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    invoke-interface {v0, v3, v7}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v7

    sget-object v11, Lz7/d0;->b:Lz7/d0;

    invoke-interface {v0, v3, v15, v11}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v0, v3, v14}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v14

    invoke-interface {v0, v3, v13}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v13

    invoke-interface {v0, v3, v6}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lz7/h0;

    move-object/from16 v25, v4

    sget-object v4, Lz7/k1;->b:Lz7/k1;

    invoke-direct {v10, v4, v4}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v3, v12, v10}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    new-instance v12, Lz7/f;

    move/from16 v26, v5

    sget-object v5, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v12, v5}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v5, 0xa

    invoke-interface {v0, v3, v5, v12}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v12, Lz7/f;

    invoke-direct {v12, v11}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v21, v5

    const/16 v5, 0xb

    invoke-interface {v0, v3, v5, v12}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/16 v12, 0xc

    invoke-interface {v0, v3, v12}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v12

    move-object/from16 v19, v5

    const/16 v5, 0xd

    invoke-interface {v0, v3, v5}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    move/from16 v18, v5

    const/16 v5, 0xe

    invoke-interface {v0, v3, v5}, Ly7/b;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v27

    const/16 v5, 0xf

    invoke-interface {v0, v3, v5}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v5

    move/from16 p1, v5

    const/16 v5, 0x10

    invoke-interface {v0, v3, v5}, Ly7/b;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    move/from16 v16, v5

    const/16 v5, 0x11

    invoke-interface {v0, v3, v5}, Ly7/b;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    move/from16 p0, v5

    const/16 v5, 0x12

    invoke-interface {v0, v3, v5}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    new-instance v5, Lw7/f;

    move-object/from16 v20, v6

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    move/from16 v29, v7

    move/from16 v24, v8

    const/4 v7, 0x1

    new-array v8, v7, [Lz4/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v30

    const/16 v23, 0x0

    aput-object v30, v8, v23

    move-object/from16 v30, v10

    new-array v10, v7, [Lkotlinx/serialization/KSerializer;

    sget-object v31, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v31, v10, v23

    invoke-direct {v5, v9, v6, v8, v10}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v6, 0x13

    invoke-interface {v0, v3, v6, v5}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v6, Lw7/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v8

    new-array v10, v7, [Lz4/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v32

    aput-object v32, v10, v23

    move-object/from16 v32, v5

    new-array v5, v7, [Lkotlinx/serialization/KSerializer;

    aput-object v31, v5, v23

    invoke-direct {v6, v9, v8, v10, v5}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v5, 0x14

    invoke-interface {v0, v3, v5, v6}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v6, Lw7/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    new-array v8, v7, [Lz4/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    aput-object v1, v8, v23

    new-array v1, v7, [Lkotlinx/serialization/KSerializer;

    aput-object v31, v1, v23

    invoke-direct {v6, v9, v2, v8, v1}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v1, 0x15

    invoke-interface {v0, v3, v1, v6}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v2, Lz7/h0;

    invoke-direct {v2, v4, v4}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v6, 0x16

    invoke-interface {v0, v3, v6, v2}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v6, 0x17

    invoke-interface {v0, v3, v6}, Ly7/b;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    new-instance v7, Lz7/f;

    invoke-direct {v7, v4}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x18

    invoke-interface {v0, v3, v4, v7}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/16 v7, 0x19

    invoke-interface {v0, v3, v7, v11}, Ly7/b;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    sget-object v8, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    const/16 v9, 0x1a

    invoke-interface {v0, v3, v9, v8}, Ly7/b;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/branch/search/internal/control/AllFeatures;

    const v9, 0x7fffffff

    move/from16 v69, p0

    move/from16 v67, p1

    move-object/from16 v73, v1

    move-object/from16 v74, v2

    move-object/from16 v76, v4

    move-object/from16 v72, v5

    move/from16 v75, v6

    move-object/from16 v77, v7

    move-object/from16 v78, v8

    move/from16 v50, v9

    move/from16 v63, v12

    move/from16 v58, v13

    move/from16 v57, v14

    move-object/from16 v56, v15

    move/from16 v68, v16

    move-object/from16 v70, v17

    move/from16 v64, v18

    move-object/from16 v62, v19

    move-object/from16 v59, v20

    move-object/from16 v61, v21

    move-object/from16 v52, v22

    move/from16 v53, v24

    move-object/from16 v51, v25

    move/from16 v54, v26

    move-wide/from16 v65, v27

    move/from16 v55, v29

    move-object/from16 v60, v30

    move-object/from16 v71, v32

    goto/16 :goto_544

    :cond_187
    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v12, v8

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v32, v15

    move-object/from16 v33, v32

    move-object/from16 v39, v33

    move-object/from16 v40, v39

    move-object/from16 v45, v40

    move-wide/from16 v43, v10

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v10, v45

    :goto_1b8
    invoke-interface {v0, v3}, Ly7/b;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v11

    packed-switch v11, :pswitch_data_552

    new-instance v0, Lw7/i;

    invoke-direct {v0, v11}, Lw7/i;-><init>(I)V

    throw v0

    :pswitch_1c5  #0x1a
    sget-object v11, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    move-object/from16 v46, v12

    const/16 v12, 0x1a

    invoke-interface {v0, v3, v12, v11, v6}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/internal/control/AllFeatures;

    const/high16 v11, 0x4000000

    goto :goto_220

    :pswitch_1d4  #0x19
    move-object/from16 v46, v12

    sget-object v11, Lz7/d0;->b:Lz7/d0;

    const/16 v12, 0x19

    invoke-interface {v0, v3, v12, v11, v13}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/Integer;

    const/high16 v11, 0x2000000

    goto :goto_220

    :pswitch_1e4  #0x18
    move-object/from16 v46, v12

    new-instance v11, Lz7/f;

    sget-object v12, Lz7/k1;->b:Lz7/k1;

    invoke-direct {v11, v12}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v12, 0x18

    invoke-interface {v0, v3, v12, v11, v8}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/high16 v11, 0x1000000

    goto :goto_220

    :pswitch_1f8  #0x17
    move-object/from16 v46, v12

    const/16 v11, 0x17

    invoke-interface {v0, v3, v11}, Ly7/b;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v11

    const/high16 v12, 0x800000

    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move/from16 v42, v11

    const/4 v6, 0x0

    const/4 v11, 0x5

    move-object v8, v7

    goto/16 :goto_342

    :pswitch_20d  #0x16
    move-object/from16 v46, v12

    new-instance v11, Lz7/h0;

    sget-object v12, Lz7/k1;->b:Lz7/k1;

    invoke-direct {v11, v12, v12}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v12, 0x16

    invoke-interface {v0, v3, v12, v11, v10}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    const/high16 v11, 0x400000

    :goto_220
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    const/4 v6, 0x0

    const/16 v12, 0xd

    move-object v8, v7

    goto/16 :goto_322

    :pswitch_22a  #0x15
    move-object/from16 v46, v12

    new-instance v11, Lw7/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v12

    move-object/from16 v47, v6

    move-object/from16 v48, v8

    const/4 v6, 0x1

    new-array v8, v6, [Lz4/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v24

    const/16 v23, 0x0

    aput-object v24, v8, v23

    move-object/from16 v49, v10

    new-array v10, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v24, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v24, v10, v23

    invoke-direct {v11, v9, v12, v8, v10}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v8, 0x15

    invoke-interface {v0, v3, v8, v11, v4}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v24, 0x200000

    goto :goto_284

    :pswitch_257  #0x14
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/4 v6, 0x1

    const/16 v23, 0x0

    new-instance v8, Lw7/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    new-array v11, v6, [Lz4/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v12

    aput-object v12, v11, v23

    new-array v12, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v24, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v24, v12, v23

    invoke-direct {v8, v9, v10, v11, v12}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v10, 0x14

    invoke-interface {v0, v3, v10, v8, v14}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v24, 0x100000

    :goto_284
    move-object v8, v7

    move/from16 v6, v23

    move-object/from16 v10, v49

    const/4 v11, 0x5

    const/16 v12, 0xd

    move-object v7, v5

    move/from16 v5, v24

    goto/16 :goto_4f7

    :pswitch_291  #0x13
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/4 v6, 0x1

    const/16 v23, 0x0

    new-instance v8, Lw7/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    new-array v11, v6, [Lz4/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v12

    aput-object v12, v11, v23

    new-array v12, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v6, v12, v23

    invoke-direct {v8, v9, v10, v11, v12}, Lw7/f;-><init>(Ljava/lang/String;Lz4/d;[Lz4/d;[Lkotlinx/serialization/KSerializer;)V

    const/16 v6, 0x13

    invoke-interface {v0, v3, v6, v8, v15}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v6, 0x80000

    move-object v8, v7

    move-object/from16 v10, v49

    goto :goto_2d3

    :pswitch_2c2  #0x12
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0x12

    invoke-interface {v0, v3, v6}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v32

    const/high16 v6, 0x40000

    move-object v8, v7

    :goto_2d3
    const/4 v11, 0x5

    const/16 v12, 0xd

    goto/16 :goto_3cb

    :pswitch_2d8  #0x11
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0x11

    invoke-interface {v0, v3, v6}, Ly7/b;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v31

    const/high16 v8, 0x20000

    const/4 v6, 0x0

    const/4 v11, 0x5

    const/16 v12, 0xd

    goto/16 :goto_3f9

    :pswitch_2ee  #0x10
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0x11

    const/16 v8, 0x10

    invoke-interface {v0, v3, v8}, Ly7/b;->C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v30

    const/high16 v10, 0x10000

    move-object v8, v7

    const/4 v6, 0x0

    const/4 v11, 0x5

    const/16 v12, 0xd

    goto/16 :goto_46c

    :pswitch_307  #0xf
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0x11

    const/16 v8, 0x10

    const/16 v10, 0xf

    invoke-interface {v0, v3, v10}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v29

    const v11, 0x8000

    move-object v8, v7

    move-object/from16 v10, v49

    const/4 v6, 0x0

    const/16 v12, 0xd

    :goto_322
    move-object v7, v5

    move v5, v11

    const/4 v11, 0x5

    goto/16 :goto_4f7

    :pswitch_327  #0xe
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0x11

    const/16 v8, 0x10

    const/16 v10, 0xf

    const/16 v11, 0xe

    invoke-interface {v0, v3, v11}, Ly7/b;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v43

    const/16 v12, 0x4000

    move-object v8, v7

    move-object/from16 v10, v49

    const/4 v6, 0x0

    const/4 v11, 0x5

    :goto_342
    move-object v7, v5

    move v5, v12

    const/16 v12, 0xd

    goto/16 :goto_4f7

    :pswitch_348  #0xd
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0x11

    const/16 v8, 0x10

    const/16 v10, 0xf

    const/16 v11, 0xe

    const/16 v12, 0xd

    invoke-interface {v0, v3, v12}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v28

    const/16 v16, 0x2000

    goto :goto_379

    :pswitch_361  #0xc
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v6, 0xc

    const/16 v8, 0x10

    const/16 v10, 0xf

    const/16 v11, 0xe

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v36

    const/16 v16, 0x1000

    :goto_379
    move-object v8, v7

    move-object/from16 v10, v49

    const/4 v6, 0x0

    const/4 v11, 0x5

    move-object v7, v5

    move/from16 v5, v16

    goto/16 :goto_4f7

    :pswitch_383  #0xb
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v8, 0x10

    const/16 v10, 0xf

    const/16 v11, 0xe

    const/16 v12, 0xd

    new-instance v6, Lz7/f;

    sget-object v8, Lz7/d0;->b:Lz7/d0;

    invoke-direct {v6, v8}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v8, 0xb

    invoke-interface {v0, v3, v8, v6, v7}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    const/16 v6, 0x800

    goto :goto_3c7

    :pswitch_3a6  #0xa
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v8, 0xb

    const/16 v10, 0xf

    const/16 v11, 0xe

    const/16 v12, 0xd

    new-instance v6, Lz7/f;

    sget-object v8, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v6, v8}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v8, 0xa

    invoke-interface {v0, v3, v8, v6, v5}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/16 v6, 0x400

    :goto_3c7
    move-object v8, v7

    move-object/from16 v10, v49

    const/4 v11, 0x5

    :goto_3cb
    move-object v7, v5

    move v5, v6

    const/4 v6, 0x0

    goto/16 :goto_4f7

    :pswitch_3d0  #0x9
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object/from16 v46, v12

    const/16 v8, 0xa

    const/16 v10, 0xf

    const/16 v11, 0xe

    const/16 v12, 0xd

    new-instance v6, Lz7/h0;

    sget-object v8, Lz7/k1;->b:Lz7/k1;

    invoke-direct {v6, v8, v8}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v8, v46

    const/16 v10, 0x9

    invoke-interface {v0, v3, v10, v6, v8}, Ly7/b;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const/16 v8, 0x200

    move-object/from16 v46, v6

    move-object/from16 v10, v49

    const/4 v6, 0x0

    const/4 v11, 0x5

    :goto_3f9
    move-object/from16 v80, v7

    move-object v7, v5

    move v5, v8

    move-object/from16 v8, v80

    goto/16 :goto_4f7

    :pswitch_401  #0x8
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    const/16 v6, 0x8

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v33

    const/16 v17, 0x100

    goto :goto_440

    :pswitch_417  #0x7
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    const/4 v6, 0x7

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v37

    const/16 v17, 0x80

    goto :goto_440

    :pswitch_42c  #0x6
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    const/4 v6, 0x6

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v38

    const/16 v17, 0x40

    :goto_440
    move-object/from16 v46, v8

    move-object/from16 v10, v49

    const/4 v6, 0x0

    const/4 v11, 0x5

    move-object v8, v7

    move-object v7, v5

    move/from16 v5, v17

    goto/16 :goto_4f7

    :pswitch_44c  #0x5
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/16 v12, 0xd

    sget-object v6, Lz7/d0;->b:Lz7/d0;

    move-object/from16 v10, v45

    const/4 v11, 0x5

    invoke-interface {v0, v3, v11, v6, v10}, Ly7/b;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/16 v10, 0x20

    move-object/from16 v45, v6

    move-object/from16 v46, v8

    const/4 v6, 0x0

    move-object v8, v7

    :goto_46c
    move-object v7, v5

    move v5, v10

    move-object/from16 v10, v49

    goto/16 :goto_4f7

    :pswitch_472  #0x4
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    move-object/from16 v10, v45

    const/4 v6, 0x4

    const/4 v11, 0x5

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v34

    move-object/from16 v46, v8

    move-object/from16 v10, v49

    const/4 v6, 0x0

    move-object v8, v7

    move-object v7, v5

    const/16 v5, 0x10

    goto/16 :goto_4f7

    :pswitch_48e  #0x3
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    move-object/from16 v10, v45

    const/4 v6, 0x3

    const/4 v11, 0x5

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v25

    move-object/from16 v46, v8

    move-object/from16 v10, v49

    const/4 v6, 0x0

    move-object v8, v7

    move-object v7, v5

    const/16 v5, 0x8

    goto :goto_4f7

    :pswitch_4a9  #0x2
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    move-object/from16 v10, v45

    const/4 v6, 0x2

    const/4 v11, 0x5

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v35

    move-object/from16 v46, v8

    move-object/from16 v10, v49

    const/4 v6, 0x0

    move-object v8, v7

    move-object v7, v5

    const/4 v5, 0x4

    goto :goto_4f7

    :pswitch_4c3  #0x1
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    move-object/from16 v10, v45

    const/4 v6, 0x1

    const/4 v11, 0x5

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v46, v8

    move-object/from16 v10, v49

    const/4 v6, 0x0

    move-object v8, v7

    move-object v7, v5

    const/4 v5, 0x2

    goto :goto_4f7

    :pswitch_4dd  #0x0
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    move-object/from16 v10, v45

    const/4 v6, 0x0

    const/4 v11, 0x5

    const/16 v12, 0xd

    invoke-interface {v0, v3, v6}, Ly7/b;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v46, v8

    move-object/from16 v39, v18

    move-object/from16 v10, v49

    move-object v8, v7

    move-object v7, v5

    const/4 v5, 0x1

    :goto_4f7
    or-int v41, v41, v5

    move-object v5, v7

    move-object v7, v8

    move-object/from16 v12, v46

    move-object/from16 v6, v47

    move-object/from16 v8, v48

    goto/16 :goto_1b8

    :pswitch_503  #0xffffffff
    move-object/from16 v47, v6

    move-object/from16 v48, v8

    move-object/from16 v49, v10

    move-object v8, v12

    move-object/from16 v10, v45

    move-object/from16 v73, v4

    move-object/from16 v61, v5

    move-object/from16 v62, v7

    move-object/from16 v60, v8

    move-object/from16 v56, v10

    move-object/from16 v77, v13

    move-object/from16 v72, v14

    move-object/from16 v71, v15

    move/from16 v54, v25

    move/from16 v64, v28

    move/from16 v67, v29

    move/from16 v68, v30

    move/from16 v69, v31

    move-object/from16 v70, v32

    move-object/from16 v59, v33

    move/from16 v55, v34

    move/from16 v53, v35

    move/from16 v63, v36

    move/from16 v58, v37

    move/from16 v57, v38

    move-object/from16 v51, v39

    move-object/from16 v52, v40

    move/from16 v50, v41

    move/from16 v75, v42

    move-wide/from16 v65, v43

    move-object/from16 v78, v47

    move-object/from16 v76, v48

    move-object/from16 v74, v49

    :goto_544
    invoke-interface {v0, v3}, Ly7/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration;

    move-object/from16 v49, v0

    const/16 v79, 0x0

    invoke-direct/range {v49 .. v79}, Lio/branch/search/KBranchRemoteConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;IIILjava/lang/Integer;IILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJIZZLjava/lang/String;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;Lz7/g1;)V

    return-object v0

    nop

    :pswitch_data_552
    .packed-switch -0x1
        :pswitch_503  #ffffffff
        :pswitch_4dd  #00000000
        :pswitch_4c3  #00000001
        :pswitch_4a9  #00000002
        :pswitch_48e  #00000003
        :pswitch_472  #00000004
        :pswitch_44c  #00000005
        :pswitch_42c  #00000006
        :pswitch_417  #00000007
        :pswitch_401  #00000008
        :pswitch_3d0  #00000009
        :pswitch_3a6  #0000000a
        :pswitch_383  #0000000b
        :pswitch_361  #0000000c
        :pswitch_348  #0000000d
        :pswitch_327  #0000000e
        :pswitch_307  #0000000f
        :pswitch_2ee  #00000010
        :pswitch_2d8  #00000011
        :pswitch_2c2  #00000012
        :pswitch_291  #00000013
        :pswitch_257  #00000014
        :pswitch_22a  #00000015
        :pswitch_20d  #00000016
        :pswitch_1f8  #00000017
        :pswitch_1e4  #00000018
        :pswitch_1d4  #00000019
        :pswitch_1c5  #0000001a
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 1

    sget-object p0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V
    .registers 3

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/KBranchRemoteConfiguration;->a(Lio/branch/search/KBranchRemoteConfiguration;Ly7/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Ly7/c;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V

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
