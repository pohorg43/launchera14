.class public final Lg3/b;
.super Lg3/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg3/e<",
        "Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplus.pantanal.ums.statictis/widget_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lg3/b;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lg3/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 12

    const-string p0, "cursor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lk3/d;

    invoke-direct {p0, p1}, Lk3/d;-><init>(Landroid/database/Cursor;)V

    new-instance p1, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;

    const-string v0, "serviceId"

    invoke-virtual {p0, v0}, Lk3/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, ""

    if-nez v0, :cond_18

    move-object v1, v9

    goto :goto_19

    :cond_18
    move-object v1, v0

    :goto_19
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lk3/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    move-object v2, v9

    goto :goto_24

    :cond_23
    move-object v2, v0

    :goto_24
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lk3/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    move-object v3, v9

    goto :goto_2f

    :cond_2e
    move-object v3, v0

    :goto_2f
    const-string v0, "preview"

    invoke-virtual {p0, v0}, Lk3/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    move-object v4, v9

    goto :goto_3a

    :cond_39
    move-object v4, v0

    :goto_3a
    const-string v0, "packageName"

    invoke-virtual {p0, v0}, Lk3/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_44

    move-object v5, v9

    goto :goto_45

    :cond_44
    move-object v5, v0

    :goto_45
    const-string v0, "displayArea"

    invoke-virtual {p0, v0}, Lk3/d;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4f

    const/4 v0, -0x1

    goto :goto_53

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_53
    move v6, v0

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lk3/d;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5f

    const/16 v0, 0x3e8

    goto :goto_63

    :cond_5f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_63
    move v7, v0

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V

    const-string v0, "query from ums,seedlingConfig info,serviceId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",des="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigDao"

    invoke-static {v1, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b3
    const-string v0, "groupTitle"

    invoke-virtual {p0, v0}, Lk3/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_bc

    goto :goto_bd

    :cond_bc
    move-object v9, p0

    :goto_bd
    invoke-virtual {p1, v9}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->setGroupTitle(Ljava/lang/String;)V

    const-string p0, "fromCursor, seedlingConfig.groupTitle = "

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getGroupTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_cf
    .catchall {:try_start_b3 .. :try_end_cf} :catchall_d0

    goto :goto_d5

    :catchall_d0
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_d5
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_e0

    const-string p0, "fromCursor,set groupTitle error,maybe version is not compatible"

    invoke-static {v1, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 1

    const-string p0, "ConfigDao"

    return-object p0
.end method

.method public c()Landroid/net/Uri;
    .registers 2

    sget-object p0, Lg3/b;->b:Landroid/net/Uri;

    const-string v0, "SERVICE_CONFIG_URI"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
