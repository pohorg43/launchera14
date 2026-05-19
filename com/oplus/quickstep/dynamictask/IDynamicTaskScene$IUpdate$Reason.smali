.class public final enum Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

.field public static final enum DIM:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->DIM:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    const-string v1, "DIM"

    const/4 v2, 0x0

    const-string v3, "dim update"

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->DIM:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->$values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->$VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->$VALUES:[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;->desc:Ljava/lang/String;

    return-object p0
.end method
