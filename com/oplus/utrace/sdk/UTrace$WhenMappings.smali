.class public final synthetic Lcom/oplus/utrace/sdk/UTrace$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/sdk/UTrace;
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

    invoke-static {}, Lcom/oplus/utrace/sdk/CompletionType;->values()[Lcom/oplus/utrace/sdk/CompletionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/oplus/utrace/sdk/CompletionType;->COMPLETE:Lcom/oplus/utrace/sdk/CompletionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/oplus/utrace/sdk/CompletionType;->RETURN:Lcom/oplus/utrace/sdk/CompletionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/oplus/utrace/sdk/UTrace$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
