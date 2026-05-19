.class public final enum Lio/branch/search/BranchConfiguration$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/BranchConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/BranchConfiguration$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/branch/search/BranchConfiguration$e;

.field public static final enum c:Lio/branch/search/BranchConfiguration$e;

.field public static final enum d:Lio/branch/search/BranchConfiguration$e;

.field public static final enum e:Lio/branch/search/BranchConfiguration$e;

.field public static final enum f:Lio/branch/search/BranchConfiguration$e;

.field public static final enum g:Lio/branch/search/BranchConfiguration$e;

.field public static final enum h:Lio/branch/search/BranchConfiguration$e;

.field public static final enum i:Lio/branch/search/BranchConfiguration$e;

.field public static final enum j:Lio/branch/search/BranchConfiguration$e;

.field public static final enum k:Lio/branch/search/BranchConfiguration$e;

.field public static final enum l:Lio/branch/search/BranchConfiguration$e;

.field public static final enum m:Lio/branch/search/BranchConfiguration$e;

.field public static final enum n:Lio/branch/search/BranchConfiguration$e;

.field public static final enum o:Lio/branch/search/BranchConfiguration$e;

.field public static final enum p:Lio/branch/search/BranchConfiguration$e;

.field public static final enum q:Lio/branch/search/BranchConfiguration$e;

.field public static final enum r:Lio/branch/search/BranchConfiguration$e;

.field public static final synthetic s:[Lio/branch/search/BranchConfiguration$e;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    new-instance v0, Lio/branch/search/BranchConfiguration$e;

    const-string v1, "BranchKey"

    const/4 v2, 0x0

    const-string v3, "branch_key"

    invoke-direct {v0, v1, v2, v3}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/branch/search/BranchConfiguration$e;->b:Lio/branch/search/BranchConfiguration$e;

    new-instance v1, Lio/branch/search/BranchConfiguration$e;

    const-string v3, "Country"

    const/4 v4, 0x1

    const-string v5, "country"

    invoke-direct {v1, v3, v4, v5}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/search/BranchConfiguration$e;->c:Lio/branch/search/BranchConfiguration$e;

    new-instance v3, Lio/branch/search/BranchConfiguration$e;

    const-string v5, "CountryNetwork"

    const/4 v6, 0x2

    const-string v7, "country_network"

    invoke-direct {v3, v5, v6, v7}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/search/BranchConfiguration$e;->d:Lio/branch/search/BranchConfiguration$e;

    new-instance v5, Lio/branch/search/BranchConfiguration$e;

    const-string v7, "CountrySim"

    const/4 v8, 0x3

    const-string v9, "country_sim"

    invoke-direct {v5, v7, v8, v9}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/search/BranchConfiguration$e;->e:Lio/branch/search/BranchConfiguration$e;

    new-instance v7, Lio/branch/search/BranchConfiguration$e;

    const-string v9, "CountryLocale"

    const/4 v10, 0x4

    const-string v11, "country_locale"

    invoke-direct {v7, v9, v10, v11}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/search/BranchConfiguration$e;->f:Lio/branch/search/BranchConfiguration$e;

    new-instance v9, Lio/branch/search/BranchConfiguration$e;

    const-string v11, "CountryToAttribute"

    const/4 v12, 0x5

    const-string v13, "country_to_attribute"

    invoke-direct {v9, v11, v12, v13}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/branch/search/BranchConfiguration$e;->g:Lio/branch/search/BranchConfiguration$e;

    new-instance v11, Lio/branch/search/BranchConfiguration$e;

    const-string v13, "CarrierToAttribute"

    const/4 v14, 0x6

    const-string v15, "carrier_to_attribute"

    invoke-direct {v11, v13, v14, v15}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/search/BranchConfiguration$e;->h:Lio/branch/search/BranchConfiguration$e;

    new-instance v13, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "BrandToAttribute"

    const/4 v14, 0x7

    const-string v12, "brand_to_attribute"

    invoke-direct {v13, v15, v14, v12}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/search/BranchConfiguration$e;->i:Lio/branch/search/BranchConfiguration$e;

    new-instance v12, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "ModelToAttribute"

    const/16 v14, 0x8

    const-string v10, "model_to_attribute"

    invoke-direct {v12, v15, v14, v10}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/search/BranchConfiguration$e;->j:Lio/branch/search/BranchConfiguration$e;

    new-instance v10, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "CustomAttribution"

    const/16 v14, 0x9

    const-string v8, "custom_attribution"

    invoke-direct {v10, v15, v14, v8}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lio/branch/search/BranchConfiguration$e;->k:Lio/branch/search/BranchConfiguration$e;

    new-instance v8, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "GAID"

    const/16 v14, 0xa

    const-string v6, "gaid"

    invoke-direct {v8, v15, v14, v6}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/branch/search/BranchConfiguration$e;->l:Lio/branch/search/BranchConfiguration$e;

    new-instance v6, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "LAT"

    const/16 v14, 0xb

    const-string v4, "is_lat"

    invoke-direct {v6, v15, v14, v4}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/branch/search/BranchConfiguration$e;->m:Lio/branch/search/BranchConfiguration$e;

    new-instance v4, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "Personalization"

    const/16 v14, 0xc

    const-string v2, "personalize_results"

    invoke-direct {v4, v15, v14, v2}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/search/BranchConfiguration$e;->n:Lio/branch/search/BranchConfiguration$e;

    new-instance v2, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "RequestExtra"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "extra_data"

    invoke-direct {v2, v15, v14, v4}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/branch/search/BranchConfiguration$e;->o:Lio/branch/search/BranchConfiguration$e;

    new-instance v4, Lio/branch/search/BranchConfiguration$e;

    sget-object v15, Lio/branch/search/e$a;->h:Lio/branch/search/e$a;

    invoke-virtual {v15}, Lio/branch/search/e$a;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v14, "Locale"

    move-object/from16 v17, v2

    const/16 v2, 0xe

    invoke-direct {v4, v14, v2, v15}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/search/BranchConfiguration$e;->p:Lio/branch/search/BranchConfiguration$e;

    new-instance v14, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "TrackingStatus"

    const/16 v2, 0xf

    move-object/from16 v18, v4

    const-string v4, "tracking_status"

    invoke-direct {v14, v15, v2, v4}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/branch/search/BranchConfiguration$e;->q:Lio/branch/search/BranchConfiguration$e;

    new-instance v4, Lio/branch/search/BranchConfiguration$e;

    const-string v15, "TrackingStatusTimestamp"

    const/16 v2, 0x10

    move-object/from16 v19, v14

    const-string v14, "tracking_status_timestamp"

    invoke-direct {v4, v15, v2, v14}, Lio/branch/search/BranchConfiguration$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/branch/search/BranchConfiguration$e;->r:Lio/branch/search/BranchConfiguration$e;

    const/16 v14, 0x11

    new-array v14, v14, [Lio/branch/search/BranchConfiguration$e;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v12, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v8, v14, v0

    const/16 v0, 0xb

    aput-object v6, v14, v0

    const/16 v0, 0xc

    aput-object v16, v14, v0

    const/16 v0, 0xd

    aput-object v17, v14, v0

    const/16 v0, 0xe

    aput-object v18, v14, v0

    const/16 v0, 0xf

    aput-object v19, v14, v0

    aput-object v4, v14, v2

    sput-object v14, Lio/branch/search/BranchConfiguration$e;->s:[Lio/branch/search/BranchConfiguration$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/BranchConfiguration$e;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/BranchConfiguration$e;
    .registers 2

    const-class v0, Lio/branch/search/BranchConfiguration$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchConfiguration$e;

    return-object p0
.end method

.method public static values()[Lio/branch/search/BranchConfiguration$e;
    .registers 1

    sget-object v0, Lio/branch/search/BranchConfiguration$e;->s:[Lio/branch/search/BranchConfiguration$e;

    invoke-virtual {v0}, [Lio/branch/search/BranchConfiguration$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/BranchConfiguration$e;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchConfiguration$e;->a:Ljava/lang/String;

    return-object p0
.end method
