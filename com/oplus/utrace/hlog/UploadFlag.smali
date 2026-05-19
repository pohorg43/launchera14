.class public final enum Lcom/oplus/utrace/hlog/UploadFlag;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/UploadFlag$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/hlog/UploadFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/hlog/UploadFlag;

.field public static final enum CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

.field public static final Companion:Lcom/oplus/utrace/hlog/UploadFlag$Companion;

.field public static final enum NEED_PROXY:Lcom/oplus/utrace/hlog/UploadFlag;

.field public static final enum NO_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/utrace/hlog/UploadFlag;

    sget-object v1, Lcom/oplus/utrace/hlog/UploadFlag;->NEED_PROXY:Lcom/oplus/utrace/hlog/UploadFlag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/hlog/UploadFlag;->NO_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/utrace/hlog/UploadFlag;

    const-string v1, "NEED_PROXY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/utrace/hlog/UploadFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->NEED_PROXY:Lcom/oplus/utrace/hlog/UploadFlag;

    new-instance v0, Lcom/oplus/utrace/hlog/UploadFlag;

    const-string v1, "CAN_UPLOAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/utrace/hlog/UploadFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    new-instance v0, Lcom/oplus/utrace/hlog/UploadFlag;

    const-string v1, "NO_UPLOAD"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/utrace/hlog/UploadFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->NO_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-static {}, Lcom/oplus/utrace/hlog/UploadFlag;->$values()[Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->$VALUES:[Lcom/oplus/utrace/hlog/UploadFlag;

    new-instance v0, Lcom/oplus/utrace/hlog/UploadFlag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/UploadFlag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->Companion:Lcom/oplus/utrace/hlog/UploadFlag$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/utrace/hlog/UploadFlag;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 2

    const-class v0, Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/hlog/UploadFlag;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/UploadFlag;->$VALUES:[Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/hlog/UploadFlag;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/hlog/UploadFlag;->value:I

    return p0
.end method
