.class public final enum Lcom/oplus/utrace/hlog/UploadState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/utrace/hlog/UploadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/utrace/hlog/UploadState;

.field public static final enum FIN:Lcom/oplus/utrace/hlog/UploadState;

.field public static final enum INIT:Lcom/oplus/utrace/hlog/UploadState;

.field public static final enum STARTED:Lcom/oplus/utrace/hlog/UploadState;

.field public static final enum UPLOADING:Lcom/oplus/utrace/hlog/UploadState;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/utrace/hlog/UploadState;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/utrace/hlog/UploadState;

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->INIT:Lcom/oplus/utrace/hlog/UploadState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->STARTED:Lcom/oplus/utrace/hlog/UploadState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->UPLOADING:Lcom/oplus/utrace/hlog/UploadState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/utrace/hlog/UploadState;->FIN:Lcom/oplus/utrace/hlog/UploadState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/utrace/hlog/UploadState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/hlog/UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadState;->INIT:Lcom/oplus/utrace/hlog/UploadState;

    new-instance v0, Lcom/oplus/utrace/hlog/UploadState;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/hlog/UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadState;->STARTED:Lcom/oplus/utrace/hlog/UploadState;

    new-instance v0, Lcom/oplus/utrace/hlog/UploadState;

    const-string v1, "UPLOADING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/hlog/UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadState;->UPLOADING:Lcom/oplus/utrace/hlog/UploadState;

    new-instance v0, Lcom/oplus/utrace/hlog/UploadState;

    const-string v1, "FIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/utrace/hlog/UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadState;->FIN:Lcom/oplus/utrace/hlog/UploadState;

    invoke-static {}, Lcom/oplus/utrace/hlog/UploadState;->$values()[Lcom/oplus/utrace/hlog/UploadState;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/UploadState;->$VALUES:[Lcom/oplus/utrace/hlog/UploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/utrace/hlog/UploadState;
    .registers 2

    const-class v0, Lcom/oplus/utrace/hlog/UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/hlog/UploadState;

    return-object p0
.end method

.method public static values()[Lcom/oplus/utrace/hlog/UploadState;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/UploadState;->$VALUES:[Lcom/oplus/utrace/hlog/UploadState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/utrace/hlog/UploadState;

    return-object v0
.end method
