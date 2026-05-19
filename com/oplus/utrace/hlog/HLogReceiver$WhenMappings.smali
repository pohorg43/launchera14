.class public final synthetic Lcom/oplus/utrace/hlog/HLogReceiver$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/HLogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/utrace/hlog/UploadFlag;->values()[Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/oplus/utrace/hlog/UploadFlag;->NO_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/oplus/utrace/hlog/UploadFlag;->NEED_PROXY:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/oplus/utrace/hlog/HLogReceiver$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
