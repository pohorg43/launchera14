.class final enum Lcom/oplus/quickstep/utils/DataStorageTask$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/utils/DataStorageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/utils/DataStorageTask$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/utils/DataStorageTask$State;

.field public static final enum RUNNING:Lcom/oplus/quickstep/utils/DataStorageTask$State;

.field public static final enum WAIT_ADD:Lcom/oplus/quickstep/utils/DataStorageTask$State;

.field public static final enum WAIT_RUN:Lcom/oplus/quickstep/utils/DataStorageTask$State;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/utils/DataStorageTask$State;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oplus/quickstep/utils/DataStorageTask$State;

    sget-object v1, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_ADD:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_RUN:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/utils/DataStorageTask$State;->RUNNING:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;

    const-string v1, "WAIT_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/DataStorageTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_ADD:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    new-instance v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;

    const-string v1, "WAIT_RUN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/DataStorageTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->WAIT_RUN:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    new-instance v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;

    const-string v1, "RUNNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/utils/DataStorageTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->RUNNING:Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-static {}, Lcom/oplus/quickstep/utils/DataStorageTask$State;->$values()[Lcom/oplus/quickstep/utils/DataStorageTask$State;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->$VALUES:[Lcom/oplus/quickstep/utils/DataStorageTask$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/utils/DataStorageTask$State;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/DataStorageTask$State;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/utils/DataStorageTask$State;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/DataStorageTask$State;->$VALUES:[Lcom/oplus/quickstep/utils/DataStorageTask$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/utils/DataStorageTask$State;

    return-object v0
.end method
