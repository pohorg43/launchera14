.class public final Lcom/oplus/quickstep/applock/Result$False;
.super Lcom/oplus/quickstep/applock/Result;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/applock/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "False"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/oplus/quickstep/applock/Result$False;-><init>(Lcom/oplus/quickstep/applock/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/applock/Reason;)V
    .registers 3

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/Result;-><init>(Lcom/oplus/quickstep/applock/Reason;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/applock/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p1, Lcom/oplus/quickstep/applock/Reason;->NA:Lcom/oplus/quickstep/applock/Reason;

    :cond_6
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/Result$False;-><init>(Lcom/oplus/quickstep/applock/Reason;)V

    return-void
.end method
