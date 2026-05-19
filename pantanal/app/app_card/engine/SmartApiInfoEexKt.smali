.class public final Lpantanal/app/app_card/engine/SmartApiInfoEexKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final logInfo(Lcom/oplus/smartsdk/SmartApiInfo;)Ljava/lang/String;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getForceChangeCardUI()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getIdMaps()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getVersion()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getThemeId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {p0}, Lcom/oplus/smartsdk/SmartApiInfo;->getValue()[B

    move-result-object p0

    if-eqz p0, :cond_2e

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmartApiInfo(forceChangeCardUI="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",extras="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",idMaps="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",themeId="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dataSize ="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", valueSize="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",)"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
