.class final Lcom/google/android/material/color/ColorResourcesLoaderCreator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorResourcesLoaderCreator"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;
    .registers 6
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/res/loader/ResourcesLoader;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->create(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p0

    sget-object p1, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table created, length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length p1, p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_6d

    if-nez p1, :cond_20

    return-object v0

    :cond_20
    :try_start_20
    const-string p1, "temp.arsc"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_65

    :try_start_27
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_63

    :try_start_2c
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_59

    :try_start_33
    new-instance v2, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v2}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    invoke-static {p0, v0}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_4d

    if-eqz p0, :cond_44

    :try_start_41
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_59

    :cond_44
    :try_start_44
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_63

    if-eqz p1, :cond_4c

    :try_start_49
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_6d

    :cond_4c
    return-object v2

    :catchall_4d
    move-exception v2

    if-eqz p0, :cond_58

    :try_start_50
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p0

    :try_start_55
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_58
    :goto_58
    throw v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v1

    :try_start_5f
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p0

    goto :goto_67

    :catchall_65
    move-exception p0

    move-object p1, v0

    :goto_67
    if-eqz p1, :cond_6c

    :try_start_69
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    :cond_6c
    throw p0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception p0

    sget-object p1, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create the ColorResourcesTableCreator."

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
