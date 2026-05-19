.class public abstract Lcom/oplus/quickstep/applock/Result;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/Result$True;,
        Lcom/oplus/quickstep/applock/Result$False;
    }
.end annotation


# instance fields
.field private final reason:Lcom/oplus/quickstep/applock/Reason;


# direct methods
.method private constructor <init>(Lcom/oplus/quickstep/applock/Reason;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/applock/Result;->reason:Lcom/oplus/quickstep/applock/Reason;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/applock/Reason;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/Result;-><init>(Lcom/oplus/quickstep/applock/Reason;)V

    return-void
.end method


# virtual methods
.method public final getReason()Lcom/oplus/quickstep/applock/Reason;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/Result;->reason:Lcom/oplus/quickstep/applock/Reason;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/applock/Result;->reason:Lcom/oplus/quickstep/applock/Reason;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
