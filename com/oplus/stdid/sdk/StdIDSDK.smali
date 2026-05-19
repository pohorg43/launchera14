.class public Lcom/oplus/stdid/sdk/StdIDSDK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getAPID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2006"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "APID"

    invoke-static {p0, v0, v1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2005"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "AUID"

    invoke-static {p0, v0, v1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2004"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "DUID"

    invoke-static {p0, v0, v1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2001"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    const/16 v0, 0x10

    const-string v1, "GUID"

    invoke-static {p0, v0, v1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2003"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    const/16 v0, 0x8

    const-string v1, "OUID"

    invoke-static {p0, v0, v1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOUIDStatus(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "2002"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    if-eqz v0, :cond_b

    const/4 p0, 0x0

    goto :goto_28

    :cond_b
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lv3/x;->c(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    const-string v0, "OUID_STATUS"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string p0, "FALSE"

    goto :goto_22

    :cond_1c
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_22
    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_28
    return p0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "1.0.6"

    return-object v0
.end method

.method public static getStdIds(Landroid/content/Context;I)Lcom/oplus/stdid/bean/StdIDInfo;
    .registers 11

    const-string v0, "2022"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/oplus/stdid/sdk/s_c;->s_a()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance p0, Lcom/oplus/stdid/bean/StdIDInfo;

    const/4 v4, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/stdid/bean/StdIDInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9f

    :cond_22
    invoke-static {p0, p1}, Lcom/oplus/stdid/sdk/s_c;->s_a(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    goto :goto_2b

    :cond_27
    invoke-static {p0, p1}, Lv3/x;->c(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object p0

    :goto_2b
    const-string p1, "GUID"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_37

    move-object v3, v1

    goto :goto_3e

    :cond_37
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v3, p1

    :goto_3e
    const-string p1, "OUID"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_48

    move-object v4, v1

    goto :goto_4f

    :cond_48
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v4, p1

    :goto_4f
    const-string p1, "OUID_STATUS"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5a

    const-string p1, "FALSE"

    goto :goto_60

    :cond_5a
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_60
    const-string v0, "TRUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string p1, "AUID"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_70

    move-object v8, v1

    goto :goto_77

    :cond_70
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v8, p1

    :goto_77
    const-string p1, "APID"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_81

    move-object v7, v1

    goto :goto_88

    :cond_81
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v7, p1

    :goto_88
    const-string p1, "DUID"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_91

    goto :goto_98

    :cond_91
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :goto_98
    move-object v6, v1

    new-instance p0, Lcom/oplus/stdid/bean/StdIDInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oplus/stdid/bean/StdIDInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9f
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/oplus/stdid/sdk/s_b$s_b;->s_a:Lcom/oplus/stdid/sdk/s_b;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, p0

    :goto_10
    iput-object v1, v0, Lb9/c;->s_h:Landroid/content/Context;

    const-string v1, "2008"

    invoke-static {v1}, La6/m;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_19
    iget-object v0, v0, Lb9/c;->s_h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.oplus.stdid"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v0, v1, :cond_2f

    sget-object v0, Lc9/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_2d} :catch_2f

    move v0, v1

    goto :goto_30

    :catch_2f
    :cond_2f
    move v0, v2

    :goto_30
    sput-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_b:Z

    if-eqz v0, :cond_38

    sput-boolean v1, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    goto/16 :goto_b9

    :cond_38
    sput-boolean v2, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    sget-object v0, Lc9/c$b;->a:Lc9/c;

    invoke-static {p0}, Lv3/x;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lb9/c;->s_h:Landroid/content/Context;

    const-string v3, "Y29tLmhleXRhcC5vcGVuaWQ="

    invoke-static {v3}, Lc9/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2008:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La6/m;->a(Ljava/lang/String;)V

    :try_start_5c
    iget-object v0, v0, Lb9/c;->s_h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_70

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v0, v1, :cond_70

    sget-object v0, Lc9/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5c .. :try_end_6e} :catch_70

    move v0, v1

    goto :goto_71

    :catch_70
    :cond_70
    move v0, v2

    :goto_71
    sput-boolean v0, Lv3/x;->b:Z

    if-eqz v0, :cond_7e

    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object p0

    const-string v0, "OP_APP"

    iput-object v0, p0, Lb9/b;->s_b:Ljava/lang/String;

    goto :goto_b7

    :cond_7e
    sget-object v0, Lc9/g$b;->a:Lc9/g;

    invoke-static {p0}, Lv3/x;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lb9/c;->s_h:Landroid/content/Context;

    const-string p0, "Y29tLmNvbG9yb3MubWNz"

    invoke-static {p0}, Lc9/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La6/m;->a(Ljava/lang/String;)V

    :try_start_9e
    iget-object v0, v0, Lb9/c;->s_h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_af

    const-string p0, "2008: > P"

    invoke-static {p0}, La6/m;->a(Ljava/lang/String;)V
    :try_end_af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9e .. :try_end_af} :catch_af

    :catch_af
    :cond_af
    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object p0

    const-string v0, "MCS_APP"

    iput-object v0, p0, Lb9/b;->s_b:Ljava/lang/String;

    :goto_b7
    sput-boolean v1, Lv3/x;->a:Z

    :goto_b9
    sput-boolean v1, Lcom/oplus/stdid/sdk/s_c;->s_a:Z

    return-void
.end method

.method public static isSupported()Z
    .registers 1

    invoke-static {}, Lcom/oplus/stdid/sdk/s_c;->s_b()Z

    move-result v0

    return v0
.end method

.method public static resetOUID(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    sget-boolean v0, Lcom/oplus/stdid/sdk/s_c;->s_c:Z

    if-nez v0, :cond_a0

    const-string v0, " 2020"

    invoke-static {v0}, La6/m;->a(Ljava/lang/String;)V

    invoke-static {}, Lv3/x;->d()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-static {}, Lc9/b;->a()Lc9/b;

    move-result-object v0

    invoke-static {p0}, Lv3/x;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lb9/b;->s_b:Ljava/lang/String;

    const-string v2, "OP_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v1, v0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "OUID"

    if-lez v1, :cond_3a

    iget-object v1, v0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc9/e;

    if-eqz v1, :cond_3a

    iget-object v0, v0, Lb9/b;->s_a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    sget-object v0, Lc9/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "OUID_TIME"

    const/4 v1, 0x0

    :try_start_3f
    const-string v3, "cache"

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_56

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v6

    goto :goto_57

    :cond_56
    move v2, v1

    :goto_57
    const-wide/16 v7, 0x0

    invoke-interface {v3, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-eqz v3, :cond_65

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_66

    :cond_65
    move v6, v2

    :goto_66
    if-eqz v6, :cond_8e

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_6b} :catch_6c

    goto :goto_8e

    :catch_6c
    move-exception v0

    const-string v2, "1024:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_85

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_89

    :cond_85
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_89
    const-string v2, "IDHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "RESET_OUID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lc9/c$b;->a:Lc9/c;

    invoke-virtual {v2, p0, v0, v1}, Lb9/c;->s_a(Landroid/content/Context;Ljava/util/List;Z)V

    const-string p0, "TRUE"

    goto :goto_a2

    :cond_a0
    const-string p0, "FALSE"

    :goto_a2
    return-object p0
.end method

.method public static setLoggable(Z)V
    .registers 1

    sput-boolean p0, La6/m;->a:Z

    return-void
.end method
