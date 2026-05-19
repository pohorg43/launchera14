.class public final Lcom/google/android/gms/ads/identifier/zzc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final zza(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, ". "

    const-string v1, "HttpUrlPinger"

    const/16 v2, 0x107

    :try_start_6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zzb(I)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_14} :catch_8a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_14} :catch_54
    .catchall {:try_start_6 .. :try_end_14} :catchall_52

    :try_start_14
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_20

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_46

    :cond_20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x41

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received non-success response code "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from pinging URL: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_4d

    :cond_46
    :try_start_46
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_49} :catch_8a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_54
    .catchall {:try_start_46 .. :try_end_49} :catchall_52

    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    return-void

    :catchall_4d
    move-exception v3

    :try_start_4e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_52} :catch_8a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_52} :catch_54
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    goto :goto_c0

    :catch_54
    move-exception v2

    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error while pinging URL: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_55 .. :try_end_86} :catchall_52

    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    return-void

    :catch_8a
    move-exception v2

    :try_start_8b
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error while parsing ping URL: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_8b .. :try_end_bc} :catchall_52

    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    return-void

    :goto_c0
    invoke-static {}, Lcom/google/android/gms/internal/ads_identifier/zzi;->zza()V

    throw p0
.end method
